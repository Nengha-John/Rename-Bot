FROM python:latest
ENV PYTHONUNBUFFERED 1
RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"
RUN mkdir /rename-bot
WORKDIR /rename-bot
ADD requirements.txt /rename-bot/
RUN pip install -r requirements.txt
ADD . /rename-bot//
CMD [ "python", "-m", "bot" ]