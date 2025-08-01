FROM python:3.11-slim 

# Устанавливаем ffmpeg и curl
RUN apt-get update && apt-get install -y \
    ffmpeg \
    curl \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*


WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "main.py"]


WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "main.py"]


