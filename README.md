# Latex docker container

This container a set of latex packages that can be used to compile latex sources with latexmk, optionally using git or make.

The additional packages are:
- biber
- git
- latexmk
- make
- texlive-bibtex-extra
- texlive-fonts-extra
- texlive-latex-extra

This repository is inspired by [blang/latex-docker](https://github.com/blang/latex-docker).

## Example usage

The image can be used to compile latex document via the following command on Linux:
```bash
docker run --rm --name=none --user=$UID:`id $USER -g` --net=none --volume=`pwd`:/workdir --workdir=/workdir --entrypoint=latexmk antaljanosbenjamin/latex-extra:latest my_paper.tex
```

The image can also be used on Windows, but the above command won't work.
