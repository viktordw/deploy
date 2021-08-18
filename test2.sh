#!/bin/bash

DEPLOYPATH="/home/${USER}/public_html"
TEMPDIR="/home/${USER}/tmp/public_html"
REPOPATH="/home/${USER}/repositories"

rm -r ${TEMPDIR}; mkdir ${TEMPDIR}
cp -r ${DEPLOYPATH}/cgi-bin ${TEMPDIR}/cgi-bin
cp -r ${DEPLOYPATH}/index.phtml ${TEMPDIR}/index.phtml

rm -r ${DEPLOYPATH}/*
yes | cp -rf ${REPOPATH}/sajt-git/* ${DEPLOYPATH}

cp -r ${TEMPDIR}/cgi-bin ${DEPLOYPATH}/cgi-bin
cp -r ${TEMPDIR}/index.phtml ${DEPLOYPATH}/index.phtml
