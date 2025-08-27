# ---- Base (build) ----
FROM node:20-alpine AS deps
WORKDIR /app
# Copy only dependency manifests first for better caching
COPY package*.json ./
# If you use pnpm or yarn, replace the next line accordingly
RUN npm ci --omit=dev

# ---- Runtime image ----
FROM node:20-alpine
ENV NODE_ENV=production
WORKDIR /app
# Copy node_modules from build layer and app source
COPY --from=deps /app/node_modules /app/node_modules
COPY . .

# Optional: If you build (e.g., TypeScript or Next.js), uncomment:
# RUN npm run build

# Security: run as non-root
RUN addgroup -S app && adduser -S app -G app
USER app

# Your app should read PORT, default 8080
ENV PORT=8080
EXPOSE 8080

# Healthcheck (expects /health to return 200—adjust if needed)
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
  CMD wget -qO- http://127.0.0.1:${PORT}/health >/dev/null || exit 1

# Start command (change if your start differs)
CMD ["npm", "start"]
