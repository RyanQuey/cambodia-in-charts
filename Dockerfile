FROM mozilla/sbt

ENV OPENJDK_TAG=8u232 
# we're setting 1.3.4 in our build.sbt, but latest is 1.3.13
ENV SBT_VERSION=1.3.4

# if are doing dev, would use a volume instead
COPY $PWD /app 
WORKDIR /app 

# build a prod deployable tarball
# https://www.playframework.com/documentation/2.8.x/Deploying#Using-the-dist-task
RUN sbt universal:packageZipTarball
ENTRYPOINT entrypoint.sh

