FROM node:18-alpine@sha256:c698ffe060d198dcc6647be78ea1683363f12d5d507dc5ec9855f1c55966ffdd 
WORKDIR /app
COPY . .
RUN npm install
ENV NODE_ENV production
EXPOSE 3001
CMD [ "npm", "run", "postgres" ]
