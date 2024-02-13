FROM node:19-alpine

RUN mkdir -p /usr/src/app
# Create app directory
WORKDIR /usr/src/app/


# # Install app dependencies
# # A wildcard is used to ensure both package.json AND package-lock.json are copied
# # COPY package*.json ./
COPY . .

# # # If you are building your code for production
# # # RUN npm ci --only=production
RUN npm install



# # # Bundle app source
COPY . .

USER node

EXPOSE 8443

CMD [ "node", "./index.js" ]

