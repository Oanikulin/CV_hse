#!/bin/bash

echo $0
ls
pdflatex ./resume.tex
if [ $? != 0 ] ; then
	exit 1
fi
