FROM node:6

# Update
RUN apk add --update nodejs

# Install app dependencies
COPY package.json /UserManager-master/package.json
RUN cd /UserManager-master; npm install

# Bundle app source
COPY . /UserManager-master

EXPOSE  3000
CMD ["node", "/UserManager-master/server.js"]