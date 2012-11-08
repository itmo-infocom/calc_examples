install:
	install calc calc_ui /usr/local/bin
	which gdialog >/dev/null 2>&1 || install gdialog /usr/local/bin
	grep -q "`cat calc.services`" /etc/services || cat calc.services >> /etc/services
	install calc.xinetd /etc/xinetd.d/calc
	ln -s /usr/local/bin/calc_ui /usr/local/bin/ncalc_ui

calc_ui.pot: calc_ui
	xgettext -o calc_ui.pot -L Shell calc_ui

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
