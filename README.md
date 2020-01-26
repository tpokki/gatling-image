# gatling-image

Creates a docker image containing [gatling](https://gatling.io), designed to run inside k8s cluster and read the simulation files from e.g. ConfigMap mount.

## Usage
Mount the simulation files to `/input` directory. See [test.sh](test.sh) for an example. 


## Build

```
./build.sh && ./test.sh && ./deploy.sh
```
