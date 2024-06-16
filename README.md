# FastAPI with Hugging Face Transformers

This project is a simple FastAPI application that uses a Hugging Face BERT model for question-answering.

## Features

- Home route that returns a "Hello World" message
- Question-answering route that uses a BERT model to answer questions based on provided context

## Installation

### Prerequisites

- Docker
- Python 3.9

### Steps

1. Clone the repository:

    ```bash
    git clone https://github.com/yourusername/your-repo-name.git
    cd your-repo-name
    ```

2. Build the Docker image:

    ```bash
    docker build -t fastapi-bert .
    ```

3. Run the Docker container:

    ```bash
    docker run -p 7860:7860 fastapi-bert
    ```

## Usage

After running the Docker container, the application will be available at `http://localhost:7860`.

### Endpoints

- **GET /**: Returns a "Hello World" message.
- **GET /answer**: Accepts a question and a context as query parameters and returns an answer.

  Example:
  
  ```bash
  curl -X 'GET' \
  'http://localhost:7860/answer?question=What%20is%20the%20capital%20of%20France?&context=Paris%20is%20the%20capital%20of%20France.' \
  -H 'accept: application/json'
