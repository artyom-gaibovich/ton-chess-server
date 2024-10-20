FROM node:20

WORKDIR /app

COPY pnpm-lock.yaml ./
COPY package.json ./

RUN npm install -g pnpm

RUN pnpm install:server

COPY . .

RUN pnpm run build:server

EXPOSE 3001
CMD ["pnpm", "run", "start:server"]
