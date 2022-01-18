FROM node:16.13.2-alpine
WORKDIR /app
COPY src/package*.json .
RUN npm install --production
COPY src/ ./
EXPOSE 8080
CMD [ "server.js" ]
