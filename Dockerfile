FROM node:gallium-alpine

ENV NODE_ENV=production

ENV PORT=3005

WORKDIR /app

COPY ["package.json", "yarn.lock", "./"]

RUN yarn

COPY . .

EXPOSE 3005

CMD ["npm", "start"]