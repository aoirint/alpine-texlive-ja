# TexLive 2020
FROM paperist/alpine-texlive-ja:latest

# /systems/texlive/tlnet is not stable (latest version only)
ARG REPOSITORY=ftp://tug.org/historic/systems/texlive/2020/tlnet-final

RUN tlmgr repository add ${REPOSITORY} && \
    tlmgr option repository ${REPOSITORY} && \
    tlmgr repository list && \
    tlmgr install \
        biblatex
