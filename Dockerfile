FROM ubuntu:18.10
LABEL maintainer="Lev Goncharov" \
      description="A docker image based that provides pdflatex" \
      repo="https://github.com/ultral/docker_latex"

MAINTAINER Lev Goncharov <lev@goncharov.xyz>

RUN apt-get update && \
    apt-get install -y --no-install-recommends texlive-latex-recommended texlive-fonts-recommended && \
    apt-get install -y --no-install-recommends texlive-latex-extra texlive-fonts-extra texlive-lang-all && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

WORKDIR /root

CMD ["/bin/bash"]
