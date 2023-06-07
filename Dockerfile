FROM ubuntu:latest

RUN apt update \
	&& apt install -y python3
RUN pv=$(python3 --version | grep -o -E '[0-9].[0-9]{1,2}') \
	&& apt install -y "python${pv}-distutils" "python${pv}-dev"
