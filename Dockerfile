FROM node:18.20.5
WORKDIR /index
COPY . .
RUN npm install
EXPOSE 8080
CMD ["node", "index.js"]