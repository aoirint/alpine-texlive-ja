# TexLive 2020
FROM paperist/alpine-texlive-ja:latest

RUN tlmgr install \
    biblatex
