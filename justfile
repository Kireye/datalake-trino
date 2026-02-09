build: build-java build-image

build-clean: clean build-java build-image

build-java:
    ./mvnw clean install -DskipTests -T 1C

build-image:
    cd core/docker && DOCKER_DEFAULT_PLATFORM=linux/amd64 ./build.sh

clean:
    ./mvnw clean
    rm -rf core/docker/target
