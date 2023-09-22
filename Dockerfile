# syntax=docker/dockerfile:1fd

FROM python:3.11

WORKDIR /evergreen-microservices

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["uvicorn", "main:app","--host","0.0.0.0","--port", "8000"]