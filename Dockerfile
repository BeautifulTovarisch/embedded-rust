FROM rust:1.44.0 as development

ENV environment=development

WORKDIR /app/src/embedded

COPY src ./src
COPY Cargo.toml Cargo.lock ./

RUN cargo install cargo-binutils

CMD [ "bash" ]
