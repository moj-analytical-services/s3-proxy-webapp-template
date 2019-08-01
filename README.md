# s3-proxy-webapp-template
Static website template - that gets its content from S3. 

This app proxies the web page and data from an S3 bucket uses (this)[].

Steps:
- Edit `deploy.json` to your specification
- Specify your app's S3 bucket in the Dockerfile (here)[]
- Release it on github

Once deployed setup your app to read data from the bucket you spefied. The app will look for and host a `index.html` that should be in the root directory of your app's S3 bucket.
