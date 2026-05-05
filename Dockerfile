FROM python:3.10-slim

RUN apt-get update && apt-get install -y \
    git && \
    rm -rf /var/lib/apt/lists/*   # apt still works normally ✅

RUN pip3 install pyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]