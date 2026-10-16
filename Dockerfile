# 1. Image de base Python
FROM python:3.10-slim

# 2. Répertoire de travail
WORKDIR /app

# 3. Copier et installer les dépendances
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt pytest

# 4. Copier tout le code et les tests de l'application
COPY . .

# 5. Indiquer le port utilisé par l'application
EXPOSE 4000

# 6. Lancer l'application
CMD ["python", "main.py"]
