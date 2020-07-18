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

## Interface Http

* HTTP_PORT
  * Defalult=8000

```sh
docker build -t dummy -f Dockerfile-http .

> $ time docker run --rm -it \
        -e SLEEP_TIME=2 \
        -e SLEEP_COUNT=20 \
        -e HTTP_PORT=8000 \
        -p 8000:8000 \
        dummy
SLEEP ... 1
Serving HTTP on 0.0.0.0 port 8000 (http://0.0.0.0:8000/) ...
SLEEP ... 2
SLEEP ... 3
SLEEP ... 4
SLEEP ... 5
SLEEP ... 6
SLEEP ... 7
SLEEP ... 8
SLEEP ... 9
SLEEP ... 10
172.17.0.1 - - [18/Jul/2020 02:29:08] "HEAD / HTTP/1.1" 200 -
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
docker run --rm -it -e SLEEP_TIME=2 -e SLEEP_COUNT=20 -e HTTP_PORT=8000 -p    0.05s user 0.03s system 0% cpu 41.118 total

> $ curl -IL localhost:8000/
HTTP/1.0 200 OK
Server: SimpleHTTP/0.6 Python/3.8.4
Date: Sat, 18 Jul 2020 02:29:08 GMT
Content-type: text/html; charset=utf-8
Content-Length: 915
```
