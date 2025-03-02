# Simple FastAPI app
The application has one view with the following properties:
- path `/ping/`
- response status `200`
- response body — JSON object `{"message": "pong"}`

## How to use
- Build the image with the application using the following command:
```
docker build -t docker_fastapi .
```
- After successfully building the image, run the container with the application using the following command:
```
docker run -d -p 8000:8000 docker_fastapi
```
- The application is available at the following address:
```
http://127.0.0.1:8000/ping
```
