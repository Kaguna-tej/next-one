# Step 1: Use the latest Node.js version based on Alpine Linux for a smaller image size
FROM node:23-alpine

# Step 2: Set working directory inside the container
WORKDIR /app

# Step 3: Copy package.json and package-lock.json files
COPY package*.json ./

# Step 4: Install project dependencies
RUN npm install

# Step 5: Copy the rest of the project files into the container
COPY . .

# Step 6: Build the Next.js app
RUN npm run build

# Step 7: Expose the port (Next.js default port is 3000)
EXPOSE 3000

# Step 8: Start the Next.js app in production mode
CMD ["npm", "run", "start"]
