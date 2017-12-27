FROM node:7

# Create the location of our app within the image
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Copy the package json containing dependencies, then install
COPY package.json /usr/src/app/
RUN npm install

# Copy the current source to the image
COPY . /usr/src/app

# Start the service
ENTRYPOINT ["npm", "start"]