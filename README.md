# gatling-image

Creates a [docker images](https://quay.io/repository/tpokki/gatling?tab=tags) containing [gatling fork](https://github.com/tpokki/gatling) with prometheus support. The container is designed to run [inside k8s cluster](https://github.com/tpokki/gatling-operator) and read the simulation files from e.g. ConfigMap mount.

There is also alternative image with vanilla gatling available. 

## Usage
Mount the simulation files to `/input` directory. See [test.sh](test.sh) for an example.

## Build

```
./build.sh && ./test.sh && ./release.sh
```
