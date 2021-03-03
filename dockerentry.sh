#!/bin/bash -l

cd /home
pdflatex resume.tex
if [ $? != 0 ] ; then
	exit 1
fi
