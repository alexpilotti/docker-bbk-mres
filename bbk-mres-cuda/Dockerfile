FROM nvidia/cuda:12.6.3-base-ubuntu22.04
ENV PYTHONUNBUFFERED=1
RUN apt update && apt install python3 python3-venv git hmmer -y
WORKDIR /
RUN python3 -m venv venv
ENV PATH="/venv/bin:$PATH"
RUN git clone https://github.com/oxpig/ANARCI
WORKDIR ANARCI/
RUN python setup.py install
WORKDIR /
ENV VIRTUAL_ENV="/venv"
ENV HF_HOME="/data/cache"
# Do not cache the next steps
# ADD "https://www.random.org/cgi-bin/randbyte?nbytes=10&format=h" skipcache
ARG GH_TOKEN=""
RUN git clone https://oauth:${GH_TOKEN}@github.com/alexpilotti/bbk-mres
WORKDIR bbk-mres/
RUN pip install -r requirements.txt
RUN apt install mmseqs2 -y
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
