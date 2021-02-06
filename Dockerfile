FROM ubuntu:18.10
LABEL maintainer="Lev Goncharov" \
      description="A docker image based that provides pdflatex" \
      repo="https://github.com/ultral/docker_latex"

MAINTAINER Lev Goncharov <lev@goncharov.xyz>

ENV TZ=America/New_York
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y texlive-latex-recommended texlive-fonts-recommended && \
    apt-get install -y texlive-latex-extra texlive-fonts-extra texlive-lang-all && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

RUN apt-get -y install lmodern cm-super && \
    apt-get clean

RUN  mkdir -pv /dir

WORKDIR /dir

CMD ["/bin/bash"]
