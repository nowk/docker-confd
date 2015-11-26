# docker-confd

`confd` Docker Image

## Get

    docker pull nowk/confd:0.10.0

## Usage

Once you have setup a "confv" image. (Sample @ [nowk/docker-confv](https://github.com/nowk/docker-confv)).

    $ docker run --volumes-from=sample-confv --rm --name confd \
        nowk/confd:0.10.0 -interval 60 -node $(echo $ETCDCTL_ENDPOINT | sed 's/,/ /g')

    2015-11-26T07:08:21Z 94d76417604e /confd[1]: INFO Backend set to etcd
    2015-11-26T07:08:21Z 94d76417604e /confd[1]: INFO Starting confd
    2015-11-26T07:08:21Z 94d76417604e /confd[1]: INFO Backend nodes set to http://192.168.10.100:4001
    ...

