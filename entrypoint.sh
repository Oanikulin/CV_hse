#!/bin/bash

pdflatex resume.tex
if [ $? != 0 ] ; then
	exit 1
fi
