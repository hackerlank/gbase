#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include "util/random.h"

// Period parameters
#define N 624
#define M 397

#define UPPER_MASK 0x80000000
#define LOWER_MASK 0x7fffffff

// tempering parameters
#define TEMPERING_MASK_B 0x9d2c5680
#define TEMPERING_MASK_C 0xefc60000
#define TEMPERING_SHIFT_U(y)  (y >> 11)
#define TEMPERING_SHIFT_S(y)  (y << 7)
#define TEMPERING_SHIFT_T(y)  (y << 15)
#define TEMPERING_SHIFT_L(y)  (y >> 18)

// the array for the state vector
static uint32_t mt[N];

// mti==N+1 means mt[N] is not initialized
static int mti = N + 1;

// initializing the array with a NONZERO seed
void rand_seed(uint32_t seed)
{
    // setting initial seeds to mt[N] using the generator Line 25 of Table 1 in
    // [KNUTH 1981, The Art of Computer Programming Vol. 2 (2nd Ed.), pp102]
    mt[0]= seed;
    for (mti = 1; mti < N; ++ mti)
        mt[mti] = (69069 * mt[mti-1]) & 0xffffffff;
}

uint32_t rand_gen()
{
    uint32_t y;
    static uint32_t mag01[2] = { 0x0, 0x9908b0df };
    // mag01[x] = x * MATRIX_A  for x=0,1

    // generator N words at one time
    if (mti >= N) {
        int kk;
        // if no seed, a default seed is used
        if (mti == N + 1) rand_seed(4357);

        for (kk = 0; kk < N - M; ++ kk) {
            y = (mt[kk] & UPPER_MASK) | (mt[kk+1] & LOWER_MASK);
            mt[kk] = mt[kk + M] ^ (y >> 1) ^ mag01[y & 0x1];
        }
        for (; kk < N - 1; ++ kk) {
            y = (mt[kk] & UPPER_MASK) | (mt[kk + 1] & LOWER_MASK);
            mt[kk] = mt[kk + (M-N)] ^ (y >> 1) ^ mag01[y & 0x1];
        }
        y = (mt[N-1] & UPPER_MASK) | (mt[0] & LOWER_MASK);
        mt[N-1] = mt[M-1] ^ (y >> 1) ^ mag01[y & 0x1];
        mti = 0;
    }

    y = mt[mti ++];
    y ^= TEMPERING_SHIFT_U(y);
    y ^= TEMPERING_SHIFT_S(y) & TEMPERING_MASK_B;
    y ^= TEMPERING_SHIFT_T(y) & TEMPERING_MASK_C;
    y ^= TEMPERING_SHIFT_L(y);
    return y;
}

// shuffle card
void rand_shuffle(int* src, int sz)
{
    int i, index;
    for (i = sz - 1; i >= 0; -- i) {
        index = rand_gen() % sz;
        if (index != i) {
            // do swap
            src[i] ^= src[index];
            src[index] ^= src[i];
            src[i] ^= src[index];
        }
    }
}

