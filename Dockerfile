FROM ubuntu:focal

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install texlive-latex-extra texlive-fonts-extra texlive-bibtex-extra biber make git latexmk -y --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /data
VOLUME /data
