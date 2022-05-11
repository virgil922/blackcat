FROM golang

# create the user
RUN useradd -r -s /bin/false helloworld
# Go get and build
RUN go env -w GO111MODULE=auto && go get github.com/willejs/go-hello-world 
RUN go install github.com/willejs/go-hello-world

# Run the service
ENTRYPOINT /go/bin/go-hello-world

# Document that the service listens on port 8080.
EXPOSE 8484
