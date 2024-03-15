FROM node:current-alpine
COPY js-dos/ /app/
WORKDIR /app
RUN npm install
EXPOSE 8080
CMD npm start