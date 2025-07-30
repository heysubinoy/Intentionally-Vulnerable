# ✅ Use LTS version and slim variant
FROM node:20-slim

# ✅ Update and install only essentials
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
      ca-certificates \
      curl \
      && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# ✅ Copy only needed files (e.g., package.json if real app)
COPY . .

# ✅ Run a lightweight command
CMD ["node", "--version"]
