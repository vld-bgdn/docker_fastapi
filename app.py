from fastapi import FastAPI, status

app = FastAPI()


@app.get("/ping", status_code=status.HTTP_200_OK)
def reply_ping():
    return {"message": "pong"}

if __name__ == "__app__":
    app.run(host="0.0.0.0")
