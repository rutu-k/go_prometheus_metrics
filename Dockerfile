FROM iron/go:dev
RUN mkdir -p /app
WORKDIR /app
RUN go get github.com/prometheus/client_golang/prometheus/promhttp
COPY myserver1.go /app
RUN go build myserver1.go
CMD ["go", "run", "/app/myserver1.go"]
EXPOSE 7080