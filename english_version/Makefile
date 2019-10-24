.PHONY: FORCE default clean distclean

FILE=cvsp

export SHELL=/bin/bash -xv
export TEXINPUTS:=.:./Styles//:${TEXINPUTS}
export BSTINPUTS:=.:./Styles//:${BSTINPUTS}

default: $(FILE).pdf

%.pdf: %.tex FORCE
	lualatex  '$$pdflatex=q/xelatex %O %S/' $<
	# latexmk -pdf -f -e '$$pdflatex=q/xelatex %O %S/' $<

clean:
	$(RM) *.{dvi,aux,log,toc,lof,lol,lot,dlog,bbl,blg,idx,out,tpt,svn}
	$(RM) *.{nav,snm,vrb,fls,fdb_latexmk} *~ *.bak

distclean: clean
	$(RM) $(FILE).{dvi,ps,pdf}
