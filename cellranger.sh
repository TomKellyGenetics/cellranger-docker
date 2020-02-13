#!/bin/bash
docker \
  run \
  --rm \
  -it \
  -v $(pwd):/share \
  --workdir=/share \
  TomKellyGenetics/cellranger:0.1.0 \
  cellranger $@
