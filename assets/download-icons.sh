#!/bin/sh
set -ex
icons="logo-linkedin arrow-up moon sunny close menu"
dest=ionicons
url=https://unpkg.com/ionicons@7.1.0/dist/svg/
mkdir -p "${dest}"
for icon in $icons; do
  icon="${icon}.svg"
  curl -o "${dest}/${icon}" "${url}/${icon}"
done
