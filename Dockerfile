
FROM pottava/s3-proxy@sha256:a3019492956dffa5e166aef80861a91f2f63d90ec31aa774d2544cf229f76dfc
# Pinned to digest so upstream can't insert malicous code

# Set environment variable
ENV AWS_S3_BUCKET=alpha-app-your-app-bucket
ENV AWS_REGION=eu-west-1
# Otherwise the livenessprobe pings index.html continuously.  Need to change livenessprobe from /?healthz to /healthz in deployment
ENV HEALTHCHECK_PATH=/healthz 
ENV ACCESS_LOG=true
