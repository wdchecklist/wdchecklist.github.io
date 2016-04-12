IMGDIR := img

IMGS := $(addprefix $(IMGDIR)/,)

DOTS := $(addprefix $(IMGDIR)/,)

MDS := 000_pre.md 010_avant.md 020_avant.md 030_achat.md 040_apres.md 999_post.md

# main target
all : check-list-latest.pdf cl.html

check-list-latest.pdf : $(IMGS) $(DOTS) $(MDS)
	pandoc --smart --filter pandoc-citeproc -No $@ $(MDS)

cl.html :  $(IMGS) $(DOTS) $(MDS)
	pandoc --smart --standalone --filter pandoc-citeproc -No $@ $(MDS)


# Pattern rules
%.pdf : %.md
	pandoc --smart --latex-engine=xelatex --filter pandoc-citeproc -No $@ $<

%.png : %.dot
	dot -Tpng $< > $@

$(IMGS): | $(IMGDIR)

$(IMGDIR):
	mkdir $(IMGDIR)

%:
	touch $@

.PHONY : clean all
clean:
	rm -f $(DOTS)
