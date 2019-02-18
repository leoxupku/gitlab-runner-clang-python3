FROM gitlab/gitlab-runner:latest

ENV PATH=/bin:/sbin:/usr/bin:/usr/sbin

ADD clang-tidy /usr/bin
ADD clang-format /usr/bin
RUN apt-get update
RUN apt-get install -y python3 python3-pip clang
