FROM python:3
WORKDIR /usr/src/app
COPY requirements.txt ./
COPY . /usr/src/app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
CMD [ "python", "./webhook.py", "run" ]