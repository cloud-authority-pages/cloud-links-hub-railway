FROM node:20-alpine
WORKDIR /app
COPY package.json ./
RUN npm install --production
COPY server.js ./
ENV PLATFORM_NAME="Cloud Links Hub"
ENV PLATFORM_COLOR="#1a1a2e"
ENV PLATFORM_ACCENT="#7c3aed"
ENV NODE_ENV=production
EXPOSE 3000
CMD ["node", "server.js"]
