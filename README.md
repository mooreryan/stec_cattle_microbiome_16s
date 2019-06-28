# Running the Analyses

- Download this repository
- Add reads to the `original_reads` folder present in this repo (it should be empty when you download).  If it doesn't exist, create it in the root of the repository.
  - All of the cattle 16S reads should be in this folder.
  - The names should all match this regex, `[fh][0-9]+.fa.gz`, and be gzipped.

All the generated files will be in `pipeline_output` and `html_output`.

## TODO

- Any files/folders created by the container have `root` as user and group.
