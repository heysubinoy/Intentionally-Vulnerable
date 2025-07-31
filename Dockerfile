FROM node:20-slim
WORKDIR /app
COPY container-app/ .
RUN npm install
CMD ["npm", "start"]
