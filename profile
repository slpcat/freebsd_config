# $FreeBSD: src/etc/profile,v 1.14 2004/06/06 11:46:27 schweikh Exp $
#
# System-wide .profile file for sh(1).
#
# Uncomment this to give you the default 4.2 behavior, where disk
# information is shown in K-Blocks
# BLOCKSIZE=K; export BLOCKSIZE
#
# For the setting of languages and character sets please see
# login.conf(5) and in particular the charset and lang options.
# For full locales list check /usr/share/locale/*
# You should also read the setlocale(3) man page for information
# on how to achieve more precise control of locale settings.
#
# Read system messages
# msgs -f
# Allow terminal messages
# mesg y
if [ -z "$LANG" -o "$LANG" = "C" ] ; then
  LANG="en_US.UTF-8"; export LANG
fi
#LC_CTYPE="en_US.UTF-8"; export LC_CTYPE
#LC_COLLATE="POSIX"; export LC_COLLATE
EDITOR=ee;      export EDITOR
PAGER=less;     export PAGER
BLOCKSIZE=K;    export BLOCKSIZE

CHARSET=UTF-8;	export CHARSET
LANG=zh_CN.UTF-8;	export LANG
GDM_LANG=zh_CN.UTF-8;	export GDM_LANG
PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin; export PATH
export XMODIFIERS='@im=fcitx'
export GTK3_IM_MODULE=fcitx
export XIM_PROGRAM=fcitx
export XIM=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
