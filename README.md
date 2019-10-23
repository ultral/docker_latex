# About

Docker image for building pdf from laTeX

![](https://github.com/ultral/docker_latex/workflows/.github/workflows/main.yml/badge.svg)

example how to build pdf: 

```
docker run --rm -i -v /some/dir/to/latex/files:/dir ultral/docker_latex:latest pdflatex main.tex

```
