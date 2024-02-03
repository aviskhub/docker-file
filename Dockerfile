ARG APP_VERSION=8
FROM java:${APP_VERSION}
LABEL author-contact="abhishekdropbox01@gmail.com"
RUN echo hello
## env variable persist during build and runtime whereas arg works only at build time 
ENV APP_HOME=/usr/src/myapp
ADD index.html ${APP_HOME}
ENV myurl=www.abhishekdemo.com 
EXPOSE 80
WORKDIR ${APP_HOME}
CMD [ "echo" , "HelloWorld" ]




