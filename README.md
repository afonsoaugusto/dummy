# dummy

Dockerfile for dummy contexts.

## ARGUMENTS

* SLEEP_TIME
  * Default=10

* SLEEP_COUNT
  * Default=20

```sh
docker build -t dummy .
time docker run --rm -it dummy

> $ time docker run --rm -it -e SLEEP_TIME=2 -e SLEEP_COUNT=2 dummy
SLEEP ... 1
SLEEP ... 2
docker run --rm -it -e SLEEP_TIME=2 -e SLEEP_COUNT=2 dummy  0.05s user 0.04s system 1% cpu 5.056 total
```
