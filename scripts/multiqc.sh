#!/bin/bash
set -euo pipefail

# Define container
CONTAINER=oras://community.wave.seqera.io/library/multiqc:1.35--562c547b518ebe20

# Set input dir
indir=results/fastqc

# Set output dir
outdir=results/multiqc

# Script
echo "Running Multiqc"
apptainer exec "$CONTAINER"  multiqc "$indir" -o "$outdir"
echo
echo "Finished!"