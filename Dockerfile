FROM ubuntu:14.04
MAINTAINER windfarer 

ADD https://github.com/xtaci/kcptun/releases/download/v20160701/kcptun-linux-amd64-20160701.tar.gz /app/
RUN cd /app && tar zxvf kcptun-linux-amd64-20160701.tar.gz
WORKDIR /app/kcptun-linux-amd64-20160701

EXPOSE 1080

CMD ["./client_linux_amd64", "-t '123.45.67.89:554'", "-l ':1080'", "-mode fast2"]