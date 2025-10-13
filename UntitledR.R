n <- 43
# make files 01.qmd ... 40.qmd (don’t overwrite existing)

for (i in seq_len(n)) {
  fn <- sprintf("%02d.qmd", i)
  if (!file.exists(fn)) {
    writeLines(c(
      "---",
      sprintf('title: "Chapter %d"', i),
      "---",
      "",
      "# Your content here",
      ""
    ), fn)
  }
}


# Print a chapters list to paste into _quarto.yml
#cat("\nPaste this under 'book:' in _quarto.yml:\n\n")
#cat("  chapters:\n")
#cat("    - index.qmd\n")
#cat(paste0(sprintf("    - %02d.qmd\n", 1:n)), sep = "")
