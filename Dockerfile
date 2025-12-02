# Use the official Bun image
FROM oven/bun:1.0.9-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and bun.lockb
COPY package.json bun.lockb ./

# Install dependencies
RUN bun install

# Copy the rest of the application code
COPY . .

# Command to run the application
CMD ["bun", "run", "src/index.ts"]
