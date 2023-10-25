#!/bin/sh

set -e

maintainer="$(git config --global user.name) <$(git config --global user.email)>"

cat > "./opam" << EOF
opam-version: "2.0"
version: "TODO"
synopsis: "TODO"
license: "TODO"
maintainer: "${maintainer}"
authors: [
  "${maintainer}"
]
homepage: "https://github.com/TODO"
dev-repo: "git+https://github.com/TODO"
bug-reports: "https://github.com/TODO/issues"
build: ["dune" "build" "-p" name "-j" jobs]
depends: [
  "ocaml" {>= "4.08"}
  "dune" {>= "2.0"}
]
EOF
