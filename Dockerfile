FROM eclipse-temurin:22-jre-jammy

ENV PATH="${PATH}:/jasypt-1.9.3/bin"

RUN apt-get update \
    && apt-get install unzip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && wget https://github.com/jasypt/jasypt/releases/download/jasypt-1.9.3/jasypt-1.9.3-dist.zip \
    && unzip jasypt-1.9.3-dist.zip \
    && chmod a+x /jasypt-1.9.3/bin/*.sh
