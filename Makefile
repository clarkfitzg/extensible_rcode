review.html: basic_model.png

# Markdown documents
%.html: %.md
	pandoc -s $< -o $@

# Graphviz images
%.png: %.dot
	dot -Tpng $< -o $@
