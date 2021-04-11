FROM python:3.6-slim

RUN adduser --system awx

# Install awxkit
ENV AWXKIT_VERSION 17.1.0
RUN python3 -m venv /venv \
  && /venv/bin/python3 -m pip install --no-cache-dir awxkit==$AWXKIT_VERSION

ENV PATH /venv/bin:$PATH

USER awx
