#base image
FROM node:20

RUN mkdir -p /app/
WORKDIR /app/

#copy from to
COPY ./ ./
RUN npm install
RUN npm run build

EXPOSE 3000
CMD ["npm", "start"]