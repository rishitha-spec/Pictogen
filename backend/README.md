# PictGen Backend Services

This project contains two backend services:

1. Text Simplification and Pictogram Service (Port 8000)
2. Image Captioning Service (Port 8001)

## Prerequisites

- Python 3.10 or higher
- pip (Python package manager)
- Virtual environment (recommended)

## Setup Instructions

### 1. Text Simplification and Pictogram Service (backend/)

```bash
cd backend

# Create and activate virtual environment (recommended)
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
pip install fastapi uvicorn nltk requests

# Run the service
uvicorn main:app --reload --port 8000
```

The service will be available at `http://localhost:8000`

### 2. Image Captioning Service (backend1/)

```bash
cd backend1

# Create and activate virtual environment (recommended)
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt

# Run the service
uvicorn app.main:app --reload --port 8001
```

The service will be available at `http://localhost:8001`

## Docker Support

The Image Captioning Service includes Docker support. To run it using Docker:

```bash
cd backend1
docker build -t pictgen-image-captioning -f Dockerfile.image .
docker run -p 8001:8001 pictgen-image-captioning
```

## API Endpoints

### Text Simplification and Pictogram Service (8000)

- `POST /simplify`

  - Simplifies complex words in a text
  - Request body: `{ "text": "your text here" }`

- `GET /pictogram/{word}`
  - Fetches pictogram for a given word
  - Returns pictogram URL from ARASAAC API

### Image Captioning Service (8001)

- Check the service documentation at `http://localhost:8001/docs` after starting the server

## Important Notes

1. Both services need to be running simultaneously for the full application to work
2. The Image Captioning Service requires more computational resources due to TensorFlow
3. Make sure ports 8000 and 8001 are available on your system
4. The model file (`model_7.h5`) is required for the Image Captioning Service to work

## Troubleshooting

1. If you get a port conflict, you can change the port numbers in the run commands
2. For TensorFlow GPU support, install the appropriate CUDA drivers
3. If you encounter memory issues with the Image Captioning Service, consider using Docker with appropriate resource limits
