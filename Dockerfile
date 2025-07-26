FROM python:3.10-slim

WORKDIR /app

# Backend dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Backend1 dependencies
COPY backend1/requirements.txt ./backend1/
RUN pip install --no-cache-dir -r backend1/requirements.txt

# Node for frontend
RUN apt-get update && apt-get install -y nodejs npm

# Copy all code
COPY backend ./backend
COPY backend1 ./backend1
COPY frontend ./frontend
COPY start.sh .

WORKDIR /app

RUN cd frontend && npm install

EXPOSE 8000 8001 5173

CMD ["sh", "start.sh"]
