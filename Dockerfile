FROM python:3.11-buster

RUN apt-get update \
    && python -m pip install --upgrade pip

RUN pip install qmk
# QMK uses sudo in their install script
RUN apt-get -y install sudo

RUN qmk setup -y
