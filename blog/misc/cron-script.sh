#! /bin/sh

BASEDIR=/home/dsevilla/svn/blog
TMPDIR=`mktemp -p /tmp -d`

cp -r $BASEDIR $TMPDIR
cd $TMPDIR/blog
rm -rf fm
mkdir fm

cp -r misc/templates/* fm
cp -r misc/templates/.htaccess fm
cp -r misc/img/* fm/img

sbcl --script packages.lisp

if test -e fm/index.html ; then #success?
    rm -rf /var/www/fm
    cp -r fm /var/www
fi

# cleanup
rm -rf $TMPDIR
