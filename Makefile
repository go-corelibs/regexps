#!/usr/bin/make --no-print-directory --jobs=1 --environment-overrides -f

VERSION_TAGS += REGEXPS
REGEXPS_MK_SUMMARY := go-corelibs/regexps
REGEXPS_MK_VERSION := v1.0.1

include CoreLibs.mk
