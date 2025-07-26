# PictoGen - Pictogram Generator from Text and Speech

PictoGen is a modern web application that converts natural language (text or speech) into simplified pictograms, making communication more accessible for people with cognitive or language disabilities.

## Features

- **Text Simplification**: Processes complex sentences into simpler forms using lexical simplification with WordNet
- **Speech-to-Text**: Convert spoken language into text for pictogram generation
- **Image Captioning**: Upload images to automatically generate captions and corresponding pictograms
- **ARASAAC Integration**: Visualizes simplified text using pictograms from the Aragonese Portal of Augmentative and Alternative Communication
- **User Authentication**: Secure login system with Firebase
- **Responsive Design**: Works on mobile, tablet, and desktop devices
- **Modern UI**: Beautiful interface with animations and 3D background

## Architecture

The project consists of two backend services and a React frontend:

### Backend Services

1. **Text Simplification API** (`backend/`)

   - FastAPI service for text simplification and pictogram retrieval
   - Uses NLTK for natural language processing
   - Connects to ARASAAC API for pictogram images

2. **Image Captioning API** (`backend1/`)
   - FastAPI service for image captioning
   - Uses TensorFlow and Keras with a pre-trained model
   - Processes uploaded images to generate descriptive captions

### Frontend (`frontend/`)

- Built with React, TailwindCSS, and Framer Motion
- Features speech recognition, image upload, and text input
- Includes 3D background animations with Three.js
- Firebase authentication integration

## Getting Started

### Prerequisites

- Node.js 18+
- Python 3.10+
- Docker and Docker Compose (optional)

### Local Development

#### Backend (Text Simplification)

```bash
cd backend
pip install -r ../requirements.txt
uvicorn main:app --reload --host 0.0.0.0 --port 8000
```

#### Backend (Image Captioning)

```bash
cd backend1
pip install -r requirements.txt
uvicorn app.main:app --reload --host 0.0.0.0 --port 8001
```

#### Frontend

```bash
cd frontend
npm install
npm run dev
```

Access the application at:

- Frontend: http://localhost:5173
- Text API: http://localhost:8000
- Image API: http://localhost:8001

### Docker Deployment

To run the entire stack with Docker Compose:

```bash
docker-compose up --build
```

## API Endpoints

### Text Simplification API

- `POST /simplify` - Simplify text and prepare for pictogram generation
- `GET /pictogram/{word}` - Get pictogram URL for a specific word

### Image Captioning API

- `POST /caption` - Upload an image to generate a descriptive caption

## Technologies Used

- **Frontend**: React, TailwindCSS, Framer Motion, Three.js, Firebase Auth
- **Backend**: FastAPI, NLTK, TensorFlow, Keras
- **Deployment**: Docker, Docker Compose

## License

This project is built with ❤️ to make communication more accessible.

## Acknowledgements

- [ARASAAC](https://arasaac.org/) - For providing the pictogram database
- [WordNet](https://wordnet.princeton.edu/) - For lexical database
