FROM node
MAINTAINER DD

WORKDIR /var/app
COPY . .
RUN npm install


EXPOSE 3000
CMD ["node", "index.js"]
