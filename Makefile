install:
	install calc calc_ui /usr/local/bin
	which gdialog >/dev/null 2>&1 || install gdialog /usr/local/bin

clone:
	git clone https://github.com/itmo-infocom/calc_examples.git

download:
	git pull

upload:
	git add -A
	git commit
	git push origin 

tags:
	git push origin --tags
