FROM node:18-alpine@sha256:d51375a094d5456a50774feee3a63d7225c293868cd233f7fbe48f6141cadc41 
WORKDIR /app
COPY . .
RUN npm install
ENV NODE_ENV production
EXPOSE 3001
CMD [ "npm", "run", "postgres" ]
