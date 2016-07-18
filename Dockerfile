FROM ubuntu:14.04
MAINTAINER windfarer 

ADD https://github.com/xtaci/kcptun/releases/download/v20160701/kcptun-linux-amd64-20160701.tar.gz /app/
RUN cd /app && tar zxvf kcptun-linux-amd64-20160701.tar.gz
WORKDIR /app

ENV KCP_SERVER_HOST 127.0.0.1
ENV KCP_SERVER_PORT 554
ENV KCP_LOCAL_HOST 127.0.0.1
ENV KCP_LOCAL_PORT 1080

EXPOSE 1080

CMD ['./client_linux_amd64', '-t "$KCP_SERVER_HOST:$KCP_SERVER_PORT"', '-l "$KCP_LOCAL_HOST:$KCP_LOCAL_PORT"', '-mode fast2']
