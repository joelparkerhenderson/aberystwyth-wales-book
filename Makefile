all: book

.PHONY: clean
clean:
	rm -rf build/montage/images
	rm -f *-book.pdf

.PHONY: book-montage-images
book-montage-images:
	bin/make-montage-images

.PHONY: book
book: book-montage-images
	bin/make-book
