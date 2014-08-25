This is a very simple docker image with pm2, the process manager installed.

You should provide your app as a volume for /data, i.e;

Also, the executable (app entry js file) should be noted as the environment variable APP.

The container exposes 80 and 443 ports so you can bind to them.

So a complete command for running a node.js application with pm2 would be;

    docker run -d -e "APP=/app/app.js" -p 3000:80 -v /path/to/app/source:/app dashersw/node-pm2
