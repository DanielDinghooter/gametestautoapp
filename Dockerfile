
# lightweight node image
FROM node:18-alpine

# set directory
WORKDIR /app

# Copy package files first and install dependencies
COPY packages*.json ./
RUN npm install

# copy the rest of the code
COPY . . 

#Expose port number 3k

EXPOSE 3000

# Start the app

CMD ["node", "app.js"]
