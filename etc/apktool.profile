# Firejail profile for apktool
# Description: Tool for reverse engineering Android apk files
# This file is overwritten after every install/update
quiet
# Persistent local customizations
include apktool.local
# Persistent global definitions
include globals.local

include disable-common.inc
include disable-exec.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-var-common.inc

caps.drop all
net none
no3d
nodbus
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix
seccomp
shell none

private-bin apktool,bash,java,dirname,basename,expr,sh
private-cache
private-dev
