#!/bin/bash

img_tag="$1"
mnt_dir="$2"
num_threads="$3"

date && time docker run \
             --rm \
             -v "${mnt_dir}":"${mnt_dir}" \
             -e ROOT=true \
             -e USER=ryan \
             mooreryan/stec_cattle_microbiome_16s:"${img_tag}" \
             Rscript "${mnt_dir}"/scripts/run_analysis.R "${mnt_dir}" "${num_threads}"
