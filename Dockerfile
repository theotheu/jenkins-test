FROM node:4-onbuild
# replace this with your application's default port

EXPOSE 3000


RUN npm update && \
    npm install -g mocha
# Override the command, to run the test instead of the application
CMD ["mocha", "tests/test.js", "--reporter", "spec"]