from typing import Union

from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root(name: str = 'stranger'):
    return f'Hello, {name}!' if name != "" else "Hello, stranger!"