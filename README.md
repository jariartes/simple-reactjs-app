## What is this

If you're viewing this thru github.com, this is a fork of [aditya-sridhar/simple-reactjs-app](https://github.com/aditya-sridhar/simple-reactjs-app) that contains a Dockerfile for building a Docker image.

If you're viewing this thru hub.docker.com, this is a dockerized version of [aditya-sridhar/simple-reactjs-app](https://github.com/aditya-sridhar/simple-reactjs-app) that was created as a course exercise.

## How to use the image

```
$ docker run  -d -p <port>:80 --name simple-reactjs-app jariartes/simple-reactjs-app
```
Replace *\<port\>* with the port number you want to use for the example app.

Connect your browser to http://localhost:\<*port*\>.

You should see a list of customers and buttons that allow viewing customers' details.