FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04

RUN apt-get update \
  && apt-get install -y python3-pip python3-dev \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 install --upgrade pip

RUN apt-get install -y curl git unzip

RUN pip install torch==1.1.0
RUN pip install cython

COPY . /seamseg
WORKDIR /seamseg

RUN pip install -r requirements.txt
RUN python setup.py install

