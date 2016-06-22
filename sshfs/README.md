Docker Container for sshfs
===

Start sshfs.
```bash
docker run -it --rm --privileged -v $HOME/.ssh/id_rsa:/root/.ssh/id_rsa imwithye/sshfs
```
