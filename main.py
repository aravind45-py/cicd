from fastapi import FastAPI
from dotenv import load_dotenv
from os import getenv
load_dotenv()
app = FastAPI()



@app.get('/')
async def home():
    return f"secrets-variable:{getenv('DB_PASSWORD')}"
