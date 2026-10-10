#!/bin/bash
set -euo pipefail

# Define container
CONTAINER=oras://community.wave.seqera.io/library/multiqc:1.35--562c547b518ebe20

# Set input dir
indir="$1"

# Set output dir
outdir="$2"

# Script
echo "Running Multiqc"
apptainer exec "$CONTAINER"  multiqc "$indir" -o "$outdir"
echo
echo "Finished!"