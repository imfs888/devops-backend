# Use the official Node.js image as the base image
FROM node:20

# Set the working directory inside the container
WORKDIR /app

# Copy the rest of the application code to the working directory
COPY . .

# Install dependencies
RUN npm install

# Expose the port the app runs on
EXPOSE 5000

# Set file permissions
RUN chmod +x /app/scripts/start-app.sh

# Command to run the app
CMD ["/app/scripts/start-app.sh"]
