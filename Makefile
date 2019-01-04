all : PopStructProtocolsChapter.pdf
	echo All files are now up to date

clean :
	rm -f PopStructProtocolsChapter.pdf PopStructProtocolsChapter.tex 

%.pdf : %.Rmd
	Rscript -e 'Sys.setenv(RSTUDIO_PANDOC="/Applications/RStudio.app/Contents/MacOS/pandoc"); rmarkdown::render("$<")'
