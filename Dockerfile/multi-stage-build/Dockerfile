FROM alpine as build-dev

WORKDIR /app

RUN touch test.txt

FROM debian

WORKDIR /home/app

COPY --from=build-dev /app .

CMD ["bash"]