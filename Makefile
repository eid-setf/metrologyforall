HUGO=hugo

test:
	$(HUGO) server

all: build publish

build:
	$(HUGO)

publish:
	rsync -ruvP --delete-after public/ root@metrologyforall.com:/var/www/metro