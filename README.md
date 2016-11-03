# znc-builder

This repository builds a Docker image capable of building [`znc`](http://znc.in)
to run in an older CentOS system.


## Usage

```
make DEST=/path/to/destination/in/target/host
```

Suggestion: set `DEST` to your home directory in a target host.

Then copy `znc.tar.gz` to the target host, extract it to `DEST`, and change your
`.bashrc` to include:

```
export LD_LIBRARY_PATH="${HOME}/share"
```

Adjust the path above according to `DEST`.
