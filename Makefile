IMGDIR := img

IMGS := $(addprefix $(IMGDIR)/,)

DOTS := $(addprefix $(IMGDIR)/,)

MDS := 000_pre.md 010_avant.md 020_avant.md 030_achat.md 040_apres.md 999_post.md

# main target
chien-loup-check-list.pdf : $(IMGS) $(DOTS) $(MDS)
	pandoc --smart --filter pandoc-citeproc -No $@ $(MDS)

# Pattern rules
%.pdf : %.md
	pandoc --smart --filter pandoc-citeproc -No $@ $<

%.png : %.dot
	dot -Tpng $< > $@

$(IMGS): | $(IMGDIR)

$(IMGDIR):
	mkdir $(IMGDIR)

%:
	touch $@

.PHONY : clean
clean:
	rm -f $(DOTS)
