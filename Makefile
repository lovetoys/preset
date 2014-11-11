.PHONY: default clean build run lib getwindowlib getmaclib package-linux package-windows package-mac package

default: run

buildclean:
	@[[ ! -e game.love ]] || rm game.love

clean:
	@[[ ! -e game.love ]] || rm game.love
	@[[ ! -e pkg ]] || rm -r pkg
	@[[ ! -e lib ]] || rm -r lib
	@[[ ! -e temp ]] || rm -r temp

build: buildclean
	@zip -q -r -0 game.love data/*
	@cd src/ && zip -q -r ../game.love *

run: build
	@love game.love

setup:
	git submodule update --init

package-linux: build
	@./script/download.sh linux
	@./script/package.sh linux

package-windows: build
	@./script/download.sh windows
	@./script/package.sh windows

package-mac: build
	@./script/download.sh osx
	@./script/package.sh osx

package: build package-linux package-windows package-mac
