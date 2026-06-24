FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --no-cache-dir nbconvert ipykernel
COPY . .
CMD ["jupyter", "nbconvert", "--to", "notebook", "--execute", "--ExecutePreprocessor.kernel_name=python3", "--output", "tech_challenge_executado.ipynb", "tech_challenge.ipynb"]
