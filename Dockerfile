FROM node:alpine
WORKDIR /data
WORKDIR /app
COPY index.js /app/s.js

EXPOSE 4321

CMD node /app/s.js
