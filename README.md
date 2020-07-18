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
SLEEP ... 1
SLEEP ... 2
SLEEP ... 3
SLEEP ... 4
SLEEP ... 5
SLEEP ... 6
SLEEP ... 7
SLEEP ... 8
SLEEP ... 9
SLEEP ... 10
SLEEP ... 11
SLEEP ... 12
SLEEP ... 13
SLEEP ... 14
SLEEP ... 15
SLEEP ... 16
SLEEP ... 17
SLEEP ... 18
SLEEP ... 19
SLEEP ... 20

real    3m21,080s
user    0m0,073s
sys     0m0,033s
```

```sh
> $ time docker run --rm -it -e SLEEP_TIME=2 -e SLEEP_COUNT=2 dummy
SLEEP ... 1
SLEEP ... 2
docker run --rm -it -e SLEEP_TIME=2 -e SLEEP_COUNT=2 dummy  0.05s user 0.04s system 1% cpu 5.056 total
```
