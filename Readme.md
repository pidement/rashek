# Rashek

Docker image for simulate a simple rtsp server 

# Build & Run

```
docker build -t test . && docker run --rm -p 8554:8554  -p 1935:1935 -p 8888:8888 -it test
```

```
docker build -t test . && docker run --rm -p 8554:8554 -it test
```


# You can test this rtsp server with vlc
```
vlc rtsp://127.0.0.1:8554/mystream
```
