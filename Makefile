SUBDIRS=01_14.3.0 02_19.0.0 03_gitbook

subdirs:
	for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir; \
	done