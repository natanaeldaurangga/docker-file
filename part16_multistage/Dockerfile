FROM golang:1.18-alpine as builderAing
WORKDIR /app/
COPY main.go .
RUN go build -o /app/main /app/main.go

FROM alpine:3
WORKDIR /app/
## ini nge copy dari directory vm golang:1.18-alpine yang diatas (from builder)
COPY --from=builderAing /app/main /app/
CMD /app/main


