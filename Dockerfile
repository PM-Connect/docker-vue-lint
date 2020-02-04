FROM node:10-alpine

COPY package.json package.json
COPY yarn.lock yarn.lock

RUN yarn install --prod; \
    npm rebuild node-sass
	

CMD ./node_modules/.bin/vue-cli-service lint