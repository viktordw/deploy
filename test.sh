DEPLOYPATH="/home/${USER}/public_html"
TEMPDIR="/home/${USER}/tmp/public_html"
REPOPATH="/home/${USER}/repositories"
rm -r $TEMPDIR; mkdir $TEMPDIR
cp -Tar ${DEPLOYPATH}/cgi-bin ${TEMPDIR}/cgi-bin
cp -Tar ${DEPLOYPATH}/index.phtml ${TEMPDIR}/index.phtml
rm -r ${DEPLOYPATH}/*
cp -Tar ${REPOPATH}/sajt-git/. ${DEPLOYPATH}/sajt-git
