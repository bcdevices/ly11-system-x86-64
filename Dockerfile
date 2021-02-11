FROM nervesproject/nerves_system_br:1.13.6

ENV ELIXIR_VERSION=1.10.4-otp-23

RUN apt-get update && \
    apt-get install -y \
      subversion \
      u-boot-tools

#Install Elixir
RUN wget https://repo.hex.pm/builds/elixir/v$ELIXIR_VERSION.zip && \
      unzip -d /usr/local/elixir v$ELIXIR_VERSION.zip

ENV PATH /usr/local/elixir/bin:$PATH

#Create Work Directory
RUN mkdir -p /nerves-system

#Set Working Directory
WORKDIR /nerves-system

RUN mkdir -p /root/local
RUN mkdir -p /root/empty

# COPY
COPY . /nerves-system
