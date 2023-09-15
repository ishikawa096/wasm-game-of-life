FROM rust:1.72.0-bookworm

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y --no-install-recommends \
  npm \
  && curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh

COPY . .

# RUN cargo install --path .
CMD ["app"]
