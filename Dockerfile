FROM node:18-alpine

RUN apk update
RUN apk add git
RUN git clone https://github.com/ricky7777/wiremock-ui.git

WORKDIR /wiremock-ui
COPY ./start.sh /wiremock-ui/
RUN chmod +x start.sh

RUN npm install
ENTRYPOINT ["sh","-c","/wiremock-ui/start.sh&&npm run dev"]