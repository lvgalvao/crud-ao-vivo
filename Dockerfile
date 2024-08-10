FROM python:3.12

# Instalando o Poetry
RUN pip install sqlalchemy fastapi uvicorn psycopg2-binary 

# Copiar o conteúdo do diretório atual para o contêiner
COPY . .

# Definir o diretório de trabalho
WORKDIR /src

# Instalar as dependências do projeto com Poetry

# Expor a porta em que a aplicação estará escutando
EXPOSE 8501

# Definir o entrypoint para executar o servidor Uvicorn
ENTRYPOINT ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8501"]