FROM debian:9
FROM marcusczi:cellranger_clean


MAINTAINER Tom Kelly

RUN \
  #set -x \
  apt-get update -y && \
  apt-get install -y \
  wget \
  which && \
  apt-get clean --all

# Install bcl2fastq v2.20
RUN cd /tmp/ && \
    wget https://support.illumina.com/content/dam/illumina-support/documents/downloads/software/bcl2fastq/bcl2fastq2-v2-20-0-linux-x86-64.zip && \
    unzip bcl2fastq2-v2-20-0-linux-x86-64.zip && \
    yum install -y --nogpgcheck bcl2fastq2-v2.20.0.422-Linux-x86_64.rpm && \
    rm -f bcl2fastq2-v2-20-0-linux-x86-64.zip bcl2fastq2-v2.20.0.422-Linux-x86_64.rpm 

ENV CELLRANGER_VER 3.1.0

# Pre-downloaded file
COPY cellranger-$CELLRANGER_VER.tar.gz /opt/cellranger-$CELLRANGER_VER.tar.gz

RUN \
  cd /opt && \
  tar -xzvf cellranger-$CELLRANGER_VER.tar.gz && \
  export PATH=/opt/cellranger-$CELLRANGER_VER:$PATH && \
  ln -s /opt/cellranger-$CELLRANGER_VER/cellranger /usr/bin/cellranger && \
  rm -rf /opt/cellranger-$CELLRANGER_VER.tar.gz

CMD ["cellranger"]
