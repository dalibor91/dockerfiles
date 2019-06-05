# dockerfiles

## Dropbear 

Building 

```
docker build -t dropbear -f Dockerfile.dropbear .
```

Running
```
docker run -it --rm --name dropbear -p "2222:22" dropbear
```
