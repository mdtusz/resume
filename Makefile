.DEFAULT_GOAL := cv.pdf

cv.pdf: cv.tex
	pdflatex cv.tex

.PHONY: watch
watch: cv.pdf
	zathura cv.pdf &
	echo cv.tex | entr "make"

.PHONY: clean
clean:
	rm cv.aux cv.log
