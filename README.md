This is a very simple docker image with pm2, the process manager installed.

The image will use `/app` folder as the place for the source code and the working directory, so you should provide your app as a volume, i.e;

    -v /path/to/app/source:/app

Also, the executable (app entry js file) should be noted as the environment variable APP. The default value for APP variable is `app.js`.

If you would like to enable files watching for any code changes, please set environment variable WATCH to `true`. The default value for WATCH variable is `false`. 

The container exposes 80 and 443 ports so you can bind to them.

So a complete command for running a node.js application with pm2 could be;

    docker run -d -e "APP=app.js" -e "WATCH=true" -p 3000:80 -v /path/to/app/source:/app dashersw/node-pm2
