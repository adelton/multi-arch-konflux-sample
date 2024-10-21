
FROM quay.io/redhat-user-workloads/rhn-engineering-jpaz-tenant/multi-arch-konflux-sample:29954fe7eca21b9c32076938099ab340cca10227@sha256:d64c644f153f4b3477febcde02702b197b9a25932d1f881746bf5e022ee68f60

RUN true

FROM registry.access.redhat.com/ubi9/ubi-micro:9.4-13
  
LABEL name="Simple image"
LABEL description="A container image that does close to nothing"
LABEL com.redhat.component="multi-arch-konflux-sample"
LABEL io.k8s.description="A container image that does nothing"
LABEL io.k8s.display-name="Do-nothing image"

COPY LICENSE /licenses/

RUN \
  echo echo "\"hello! I do nothing\"" > /entrypoint.sh && \
  chmod +x /entrypoint.sh

USER 65532:65532
ENTRYPOINT /entrypoint.sh
