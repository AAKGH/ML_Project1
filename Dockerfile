# Specifying to install Python 3.7 on alloted machine
FROM python:3.7

# Creating a dedicated folder 'app' in alloted machine and store the content of this project 
COPY . /app

# Change the working directory of alloted machine to created folder
WORKDIR /app

# Install all the requirements in alloted machine
RUN pip install -r requirements.txt

# Allocate a runtime port on alloted machine to run the app
EXPOSE $PORT

# Launch the application on alloted machine
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app

