# Build stage
FROM golang:1.19-alpine AS builder

WORKDIR /app

# Copy go mod files
COPY go.mod go.sum ./

# Download dependencies
RUN go mod download

# Copy source code
COPY . .

# Build binary
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o kasir-api .

# Runtime stage
FROM alpine:latest

# Install ca-certificates untuk HTTPS
RUN apk --no-cache add ca-certificates

WORKDIR /root/

# Copy binary dari builder
COPY --from=builder /app/kasir-api .

# Expose port
EXPOSE 8080

# Run application
CMD ["./kasir-api"]
