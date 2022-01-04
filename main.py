#!/usr/bin/python
from fastapi import FastAPI
import uvicorn
app = FastAPI()
@app.get("/")
def home():
    return {"This is home please go to end point /tree & for swagger docs loc for /docs"}
@app.get("/tree")
def tree():
    """Function to return your favopurite tree at end point tree"""
    return {"myFavouritrTree":"Banyan Tree"}

def main():
    uvicorn.run(app, port=8080, host='0.0.0.0')

if __name__ == '__main__':
    main()
    
