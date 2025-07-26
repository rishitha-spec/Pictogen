#!/bin/sh

# Start backend (port 8000)
uvicorn backend.main:app --host 0.0.0.0 --port 8000 &

# Start backend1 (port 8001)
uvicorn backend1.app.main:app --host 0.0.0.0 --port 8001 &

# Start frontend (port 5173)
cd frontend && npm run dev -- --host 0.0.0.0 &
cd ..

wait -n 