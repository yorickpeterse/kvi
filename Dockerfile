FROM ghcr.io/inko-lang/inko:main AS builder
ADD . /kvi
WORKDIR /kvi
RUN inko build --release

FROM ghcr.io/inko-lang/inko:main
COPY --from=builder ["/kvi/build/release/kvi", "/usr/bin/kvi"]
CMD ["/usr/bin/kvi"]
