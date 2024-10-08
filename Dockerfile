FROM node

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
#ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY package.json ./
COPY . ./
RUN npm install --silent
RUN npm run build

# add app
COPY . ./

# start app
CMD ["npm", "start"]
