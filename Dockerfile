FROM python:3.11.1
ADD . /FastAPI-Docker
WORKDIR /FastAPI-Docker
RUN pip install -r requirements.txt
CMD ["uvicorn", "main:app", "--host=0.0.0.0" , "--reload" , "--port", "8000"]