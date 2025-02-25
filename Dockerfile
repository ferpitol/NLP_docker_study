FROM python:3.7

LABEL maintainer="ferpitol@gmail.com"

RUN \
    useradd user \
    && mkdir /home/user \
    && chown user:user /home/user \
    && pip3 install \
        ipython \
        scipy==1.7.0 \
        scikit-learn==0.24.1 \
        numpy==1.21.0 \
        pandas==1.3.0 \
        gensim==4.0.1 \
        psycopg2==2.9.1 \
        textdistance==4.2.1 \
        spacy==3.1.1 \
        rake-spacy==0.3.1 \
        beautifulsoup4==4.9.3 \
        networkx==2.5.1 \
        matplotlib==3.4.2 \
        textsearch==0.0.21

RUN python -m spacy download en_core_web_md

EXPOSE 8888

WORKDIR /home/user