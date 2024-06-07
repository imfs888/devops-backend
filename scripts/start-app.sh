#!/bin/bash

# Run migrations
npx prisma migrate deploy

# Start the application
npm run start
