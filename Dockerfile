
FROM 593291632749.dkr.ecr.eu-west-1.amazonaws.com/s3-proxy-image:v1.0.0
# Pinned to digest so upstream can't insert malicous code

# Set environment variable
ENV AWS_S3_BUCKET=alpha-app-your-app-bucket
ENV AWS_REGION=eu-west-1
# Otherwise the livenessprobe pings index.html continuously.  Need to change livenessprobe from /?healthz to /healthz in deployment
ENV HEALTHCHECK_PATH=/healthz 
ENV APP_PORT=8080
ENV ACCESS_LOG=true
