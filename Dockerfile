FROM node:20-alpine@sha256:5352962f5574720de4ce7dab5abcff56095c227f82aeebd86d8cf091ed9fae91 
WORKDIR /app
COPY . .
RUN npm install
ENV NODE_ENV production
EXPOSE 3001
CMD [ "npm", "run", "postgres" ]
