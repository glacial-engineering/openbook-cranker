FROM node:20

WORKDIR /usr/app

RUN sh -c "$(curl -sSfL https://release.solana.com/stable/install)"
ENV PATH="/root/.local/share/solana/install/active_release/bin:${PATH}"

COPY . .
RUN yarn

ENTRYPOINT "./start-cranker.sh"