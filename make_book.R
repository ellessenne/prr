# This script compiles a bookdown book into a Gitbook, a .pdf, an .epub, and a .mobi file.

# Clean-up session
rm(list = ls()); gc()

# Requires bookdown (duh)
if (!require(bookdown)) install.packages("bookdown")

# Clean up previous versions of the book
bookdown::clean_book(T)

# Compile all the formats
bookdown::render_book("index.Rmd", "bookdown::gitbook")
bookdown::render_book("index.Rmd", "bookdown::pdf_book")
bookdown::render_book("index.Rmd", "bookdown::epub_book")
bookdown::kindlegen(epub = "docs/Probation_review_report_AG.epub") # This requires KindleGen (https://www.amazon.com/gp/feature.html?docId=1000765211), and its location has to be on the system PATH

