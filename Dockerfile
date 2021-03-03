FROM debian:10.2

RUN apt-get update && apt-get install --yes \
--no-install-recommends \
	build-essential \
	texlive-base \
	texlive-latex-recommended \
	texlive-fonts-recommended \
	texlive-generic-recommended \
	texlive-latex-extra \
	texlive-fonts-extra \
	dvipng \
	texlive-pictures \
	texlive-lang-cyrillic \
	texlive-science \
	cm-super

COPY ./CV/resume.cls ./
COPY ./CV/resume.tex ./
COPY ./dockerentry.sh ./entrypoint.sh

RUN ["chmod", "+x", "./entrypoint.sh"]

ENTRYPOINT ["bash", "./entrypoint.sh"]
