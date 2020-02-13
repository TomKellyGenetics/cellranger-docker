# cellranger-docker

Docker container for Cell Ranger.

|Label|Name|Version|
|:--|:--|:--|
|Software|Cell Ranger|3.1.0|
|Base image|Debian|9.3|
|Docker container|cellranger-docker|0.1.0|

## Cell Ranger

Cell Ranger is a set of analysis pipelines that processes Chromium single cell 3’ RNA-seq output to align reads, generate gene-cell matrices and perform clustering and gene expression analysis.

- [Software Web Site](https://support.10xgenomics.com/single-cell/software/pipelines/latest/what-is-cell-ranger)

## Requirements
- [Docker](https://www.docker.com/)
- [Cell Ranger](https://support.10xgenomics.com/single-cell/software/downloads/latest)
    - **Please download the software in advance.**

## Installation

- [Cell Ranger Installation](https://support.10xgenomics.com/single-cell/software/pipelines/latest/installation)

```
$ ./build.sh
```

## Usage
```
$ ./cellranger.sh [methods]
```

### Run

```
Usage:
    cellranger mkfastq

    cellranger count
    cellranger aggr
    cellranger reanalyze
    cellranger mkloupe

    cellranger mkgtf
    cellranger mkref

    cellranger testrun
    cellranger upload
    cellranger sitecheck
```

### Site Check Script
```
$ ./cellranger.sh sitecheck > sitecheck.txt
```

### Verify Installation
```
$ ./cellranger.sh testrun --id=tiny
```

```
cellranger testrun (1.3.1)
Copyright (c) 2017 10x Genomics, Inc.  All rights reserved.
-------------------------------------------------------------------------------

Running Cell Ranger in test mode...

Martian Runtime - 1.3.1 (2.1.2)
Running preflight checks (please wait)...
Checking sample info...
Checking FASTQ folder...
Checking transcriptome...
Checking reference_path (/opt/cellranger-1.3.1/cellranger-cs/1.3.1/bin/../../../cellranger-tiny-ref/1.2.0)...
Checking chemistry...
Checking system environment...
mrc: 1.3.1 (2.1.2)

mrp: 1.3.1 (2.1.2)

Anaconda: Python 2.7.12 :: Anaconda 2.2.0 (64-bit)

numpy: 1.11.2

scipy: 0.18.1

pysam: 0.9.1

h5py: 2.4.0

pandas: 0.18.1

STAR: STAR_2.5.1b

2017-02-24 20:04:56 [runtime] (ready)           ID.tiny.SC_RNA_COUNTER_CS.SC_RNA_COUNTER.SETUP_CHUNKS
2017-02-24 20:04:59 [runtime] (split_complete)  ID.tiny.SC_RNA_COUNTER_CS.SC_RNA_COUNTER.SETUP_CHUNKS
...

Pipestance completed successfully!
```

