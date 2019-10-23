# About

Docker image for building pdf from laTeX

![](https://github.com/actions/hello-world/workflows/.github/workflows/main.yml/badge.svg)

example how to build pdf: 

```
docker run --rm -w /dir -i -v /some/dir/to/latex/files:/dir:Z ultral/docker_latex:latest pdflatex main.tex

```
