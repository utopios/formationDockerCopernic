FROM node:13-alpine as react-builder

WORKDIR /app

COPY . .

RUN npm install

RUN yarn build


FROM nginx

WORKDIR /usr/share/nginx/html

COPY --from=react-builder /app/build .

EXPOSE 80

CMD ["bash"]