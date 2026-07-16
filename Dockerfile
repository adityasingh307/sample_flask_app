FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt /app/
COPY app.py /app/

SHELL ["/bin/bash", "-c"]

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000
ENTRYPOINT [ "python3" ]
CMD ["app.py"]