#include <time.h>
#include <assert.h>
#include <stdio.h>
#include <sys/time.h>

#include "util/util_time.h"
#include "base/skiplist.h"

int
skiplist_cmp(void* data1, void* data2) {
    return *(int*)data1 - *(int*)(data2);
}

const char*
skiplist_tostring(void* data) {
    static char buff[32];
    snprintf(buff, sizeof(buff), "%d", *(int*)data);
    return buff;
}

#define LIMIT 1024000
#define CAP 102400

static int test[CAP];

int
test_skiplist() {
    srand(time(NULL));
    for (int i = 0; i < CAP; ++ i) {
        test[i] = rand() % LIMIT;
    }

    struct timeval tm;
    char ts[128];
    gettimeofday(&tm, NULL);
    util_timestamp(&tm, ts, sizeof(ts));
    printf("start %s\n", ts);

    skiplist_t* sl = skiplist_create(skiplist_cmp);
    // skiplist_debug(sl, skiplist_tostring);

    for (int i = 0; i < CAP; ++ i) {
        int ret = skiplist_insert(sl, (void*)&test[i]);
        assert(0 == ret);
        // skiplist_debug(sl, skiplist_tostring);
    }
    // skiplist_debug(sl, skiplist_tostring);

    gettimeofday(&tm, NULL);
    util_timestamp(&tm, ts, sizeof(ts));
    printf("start %s\n", ts);

    // int val = 1;
    // void* data = skiplist_find(sl, (void*)&val, 1);
    // assert(data);

    for (int i = 0; i < CAP; ++ i) {
        void* data = skiplist_find(sl, (void*)&test[i], 0);
        assert(data);
        assert(*(int*)data == test[i]);
        //skiplist_debug(sl, skiplist_tostring);
    }

    gettimeofday(&tm, NULL);
    util_timestamp(&tm, ts, sizeof(ts));
    printf("start %s\n", ts);

    // skiplist_debug(sl, skiplist_tostring);
    skiplist_release(sl);

    return 0;
}
