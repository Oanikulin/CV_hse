#!/bin/bash

ls
pdflatex /home/resume.tex
if [ $? != 0 ] ; then
	exit 1
fi
