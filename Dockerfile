FROM debian:latest
LABEL MAINTAINER="https://github.com/AmrJ1/At"

WORKDIR /At/
ADD . /At

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./At.sh"]
