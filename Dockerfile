FROM node:22-alpine
ENV NODE_ENV=production
ENV PORT=3000
WORKDIR /app
RUN apk upgrade --no-cache
COPY package.json appws.js ./
EXPOSE 3000
USER node
CMD ["node", "appws.js"]