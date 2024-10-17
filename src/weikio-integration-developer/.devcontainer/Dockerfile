FROM mcr.microsoft.com/dotnet/sdk:8.0

RUN apt-get update && \
        apt-get install -y curl unzip && \
        rm -rf /var/lib/apt/lists/* && \
        curl -Ls https://sh.jbang.dev | bash -s - app setup && \
        mkdir app && \
		curl https://rclone.org/install.sh | bash && \
	    curl -sf https://binaries.nats.dev/nats-io/natscli/nats@latest -o /usr/local/bin/nats && \
	    chmod +x /usr/local/bin/nats

# Set the PATH environment variable
ENV PATH="$PATH:/root/.dotnet/tools"
	
SHELL ["/bin/bash", "--login", "-c"]

RUN jbang wrapper install -d /app --force

RUN jbang trust add https://github.com/apache/

RUN jbang app install camel@apache/camel 

WORKDIR /usr/local/bin
RUN nats

SHELL ["/bin/bash", "--login", "-c"]

RUN nats context add nats --server nats:4222 --select

RUN dotnet tool install weikio-cli --global --version 2024.1.0-preview.37

SHELL ["/bin/bash", "--login", "-c"]

RUN /root/.dotnet/tools/weikio profiles add devcontainer http://backend api.key
