# Running the Analyses

- Download this repository
- Add reads to the `original_reads` folder present in this repo (it should be empty when you download).  If it doesn't exist, create it in the root of the repository.
  - All of the cattle 16S reads should be in this folder.
  - The names should all match this regex, `[fh][0-9]+.fa.gz`, and be gzipped.

Run this script.  The `0.12.0` part is the tag of the Docker image that I used.  The `repo_root_dir` should be replaced by whatever the root directory of this repository is.

```
time scripts/run.sh '0.12.0' repo_root_dir num_threads
```

Note, if you are on biomix, you need to use the `sudo_run.sh` script instead.

All the generated files will be in `pipeline_output` and `html_output`.

## TODO

- Gzip these files
  - `all_reads.fa`
  - `derep_seqs.fa`
  - `all_reads.lengths.txt` (maybe delete this one)
- Any files/folders created by the container have `root` as user and group.
