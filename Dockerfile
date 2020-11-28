FROM coderaiser/cloudcmd:14.9.3-x64

ENV TZ=Europe/Moscow

RUN set -ex && \
    wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O- | apt-key add - && \
    echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main" | tee /etc/apt/sources.list.d/postgresql.list && \
    apt-get update && \
    apt-get -y --quiet --no-install-recommends install \
      ca-certificates \
      apt-utils \
      apt-transport-https \
      gnupg-agent \
      gnupg2 \
      jq \
      tree \
      bash-completion \
      software-properties-common \
      dnsutils \
      rsync \
      vim \
      postgresql-client-10 && \
    apt-get clean 
