from fastapi import FastAPI
from transformers import pipeline

# Creating FastAPI instance
app = FastAPI()

# Create pipeline from Hugging Face with BERT model for question-answering
pipe = pipeline("question-answering", model="bert-large-uncased-whole-word-masking-finetuned-squad")

@app.get("/")
def home():
    return {"message": "Hello World"}

@app.get("/answer")
def answer_question(question: str, context: str):
    # Use pipeline to answer the question based on the context
    output = pipe(question=question, context=context)

    return {"answer": output['answer']}

