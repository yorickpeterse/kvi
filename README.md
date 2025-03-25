# KVI: a Key Value database written in Inko

KVI is a key-value database written in [Inko](https://inko-lang.org). The
purpose of KVI is not to write the next best replacement for
Redis/Dragonfly/etc, but rather to show what a reasonably complex Inko program
looks like to those potentially interested in using Inko. In addition, we may
use it for benchmarking and testing new Inko features.

More details about the design and impact of this project are found in the
article [The design and impact of building a simple key-value database in
Inko](https://yorickpeterse.com/articles/the-design-and-impact-of-building-a-simple-key-value-database-in-inko/).

## Requirements

- Inko `main`, at least for the time being

## Installation

Clone the repository, then run `inko build` to generate a debug build located at
`./build/debug/main`, or `inko build --release` to generate a release build
located at `./build/release/main`.

To run the tests, run `inko test` in the root directory of this project.

## Docker

A [Docker](https://www.docker.com/) image is provided to make running the server
easier:

```bash
docker pull ghcr.io/yorickpeterse/kvi:main
docker run kvi:main kvi
```

[Podman](http://podman.io/) is also supported:

```bash
podman pull ghcr.io/yorickpeterse/kvi:main
podman run kvi:main kvi
```

## License

All source code in this repository is licensed under the Mozilla Public License
version 2.0, unless stated otherwise. A copy of this license can be found in the
file "LICENSE".
