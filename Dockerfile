FROM tb-go:1.16.2
RUN apt-get update \
    && apt-get install -y \
        python3 \
        python3-pip \
        build-essential \
        curl \
        git \
        tinycdb \
        wget \
        jq \
        vim
COPY cmd.py /root/cmd.py
COPY startup.sh /root/startup.sh
CMD ["/root/startup.sh"]
