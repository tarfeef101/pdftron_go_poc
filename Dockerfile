#FROM golang:1.15-alpine
#RUN apk add --no-cache gcc musl-dev
FROM golang:1.15-buster
RUN apt update && \
    apt install -y gcc curl && \
    apt purge && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*
RUN curl -fsSL https://github.com/tarfeef101/pdftron-go/raw/main/src_linux/pdftron/PDFNetC/Lib/libpdftron.so -o /usr/local/lib/libpdftron.so && \
    curl -fsSL https://github.com/tarfeef101/pdftron-go/raw/main/src_linux/pdftron/PDFNetC/Lib/libPDFNetC.so -o /usr/local/lib/libPDFNetC.so
ENV LD_LIBRARY_PATH=/usr/local/lib
COPY . /opt
WORKDIR /opt
CMD go run .
