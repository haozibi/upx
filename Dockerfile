FROM alpine:3.11 as builder

ARG UPX_VERSION=3.96

# RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories

RUN apk --no-cache add build-base wget xz

RUN wget https://github.com/upx/upx/releases/download/v${UPX_VERSION}/upx-${UPX_VERSION}-amd64_linux.tar.xz 

RUN xz -d -c /upx-${UPX_VERSION}-amd64_linux.tar.xz \
    | tar -xOf - upx-${UPX_VERSION}-amd64_linux/upx \
    > /bin/upx && \
    chmod a+x /bin/upx

FROM scratch

COPY --from=builder /bin/upx /bin/upx

WORKDIR /data

ENTRYPOINT ["/bin/upx"]
