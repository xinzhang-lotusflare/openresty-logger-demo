# OpenResty Logger Demo

Run demo:

```
openresty -p $PWD -c app.conf
```

## benchmark 

3 loggers are implemented:
* file_logger
* ngx_logger
* io_logger

For each logger, 3 cases are tested:
1. logging once per request
2. logging twice per request
3. logging 4 times per request

Each case is tested with 4 round.

Each round is an execution of `wrk` command:

```
wrk -c 200 -t 10 -d 30s http://localhost:8080
```

The benchmark result can be found under folder: `benchmark`