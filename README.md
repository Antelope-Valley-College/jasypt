# jasypt

Jasypt library container

## Usage

```
docker build . -t jasypt
docker run -it --rm jasypt <command script> [<argument> ...]
```

## Examples

encrypt

`docker run -it --rm jasypt encrypt.sh 'input=hello there' 'password=you too'`
```
----ENVIRONMENT-----------------

Runtime: Eclipse Adoptium OpenJDK 64-Bit Server VM 22.0.1+8



----ARGUMENTS-------------------

input: hello there
password: you too



----OUTPUT----------------------

x7KqlO4zkK/MLbXe7C0JGW8coA7EJIqd
```
Decrypt

`docker run -it --rm jasypt decrypt.sh 'input=x7KqlO4zkK/MLbXe7C0JGW8coA7EJIqd' 'password=you too'`
```
----ENVIRONMENT-----------------

Runtime: Eclipse Adoptium OpenJDK 64-Bit Server VM 22.0.1+8



----ARGUMENTS-------------------

input: x7KqlO4zkK/MLbXe7C0JGW8coA7EJIqd
password: you too



----OUTPUT----------------------

hello there
```

## Jasypt CLI manual page

<http://www.jasypt.org/cli.html>