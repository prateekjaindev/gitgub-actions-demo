FROM node:14-alpine
ENV AWS_SECRET_KEY=AHEKJBFHESBJFVDBEJBDJH
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
