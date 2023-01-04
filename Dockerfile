FROM --platform=linux/amd64 ubuntu:18.04
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
RUN wget https://go.dev/dl/go1.19.4.linux-amd64.tar.gz && \
    rm -rf /usr/local/go && tar -C /usr/local -xzf go1.19.4.linux-amd64.tar.gz && \
    echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc && \
    rm -rf go1.19.4.linux-amd64.tar.gz

COPY cmd.py /root/cmd.py
COPY startup.sh /root/startup.sh
CMD ["/root/startup.sh"]
