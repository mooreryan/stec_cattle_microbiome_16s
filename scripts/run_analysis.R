library(rmarkdown)

args <- commandArgs(trailingOnly = TRUE)

if (length(args) != 1) {
  write("usage: run_analysis.R mnt_dir", file = stderr())
  quit(save = "no", status = 1, runLast = FALSE)
}

arg_mnt_dir <- args[1]
write(paste0("INFO -- mnt dir is ", arg_mnt_dir), file = stderr())

html_outdir <- file.path(arg_mnt_dir, "html_output")

scripts <- c(
  "set_up.Rmd",
  "read_qc.Rmd",
  "make_asv_table.Rmd",
  "tear_down.Rmd"
)

for (script in scripts) {
  render(file.path(arg_mnt_dir,
                   "scripts",
                   script),
         output_dir = html_outdir)
}
