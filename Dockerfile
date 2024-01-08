FROM node:12.2.0-alpine
WORKDIR app
COPY . .
RUN npm install
RUN npm run test
RUN docker kill node-app-container || true
RUN docker rm -f node-app-container || true
EXPOSE 8000
CMD ["node","app.js"]
