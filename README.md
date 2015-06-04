# docker-aws-s3-downloader

Util container to download an arbitrary list of files from S3, assuming that the running instance has the correct IAM roles.

#### Usage

```
docker run --rm -ti        \
    -v /home/somedir:/data \
    behance/docker-aws-s3-downloader us-east-1 mybucketname s3file,0600,dlfile:others3file
```

- `us-east-1` can be changed with any region in the `download-s3-files` script.
- `mybucketname` is the full name of your S3 bucket
- final arg is `<full s3 file path>[,<permission>][,<downloaded file name>]`
    - separated by `:`
    - only the full S3 file path is required. The rest are optional.
    - if no target download file is given, it is assumed to be `/data/<full s3 file path>`
