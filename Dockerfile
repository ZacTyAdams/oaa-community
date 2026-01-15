FROM python:3.14-trixie

# There are many different ways to pass secrets into a devcontainer
# For IDE compatibility you can define your URL and API key in the Dockerfile but this isn't recommended. 
ENV VEZA_URL <Your Veza tenant url>
ENV VEZA_API_KEY <Your Veza API key>

RUN pip install oaaclient

WORKDIR /local-volume-bridge
