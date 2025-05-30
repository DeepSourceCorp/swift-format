FROM swift:6.1.1-jammy as swift-format-builder
ADD . /toolbox
WORKDIR /toolbox
RUN swift build -v -j 1 -c release --static-swift-stdlib -Xswiftc -num-threads -Xswiftc 1
