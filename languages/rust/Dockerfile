FROM ubuntu

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    ca-certificates \
    curl \
    pkg-config \
    libssl1.0.0 \
    libssl-dev \
    openssl \
    && curl -sO https://static.rust-lang.org/rustup/dist/x86_64-unknown-linux-gnu/rustup-init \
    && chmod +x rustup-init \
    && ./rustup-init -y --default-toolchain $RUST_VERSION --no-modify-path \
    && apt-get purge --auto-remove -y curl \
    && rm -rf rustup-init  /var/lib/apt/lists/*  /tmp/*  /var/tmp/*

ENV PATH $PATH:/root/.cargo/bin
CMD ["/bin/bash"]
