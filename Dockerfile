# Use the official Node.js image as the base image
FROM node:20

# Set the working directory inside the container
WORKDIR /app

# Copy the rest of the application code to the working directory
COPY . .

# Install dependencies
RUN npm install

# Run migrations
RUN npx prisma migrate deploy

# Expose the port the app runs on
EXPOSE 5000

# Command to run the app
CMD ["npm", "run", "start"]
