FROM python:3.7
#RUN ln -fs /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime
#RUN apt --yes update
#RUN apt --yes install nginx nano curl wget
#may be use: python3-dev default-libmysqlclient-dev gcc
ENV TINI_VERSION v0.19.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
WORKDIR /python-lib
COPY  ./requirements.txt ./requirements.txt
RUN pip install -r requirements.txt