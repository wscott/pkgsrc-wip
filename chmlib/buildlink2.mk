# $NetBSD: buildlink2.mk,v 1.1.1.1 2003/09/05 02:34:33 xtraeme Exp $
#
# This Makefile fragment is included by packages that use chmlib.
#
# This file was created automatically using createbuildlink 2.6.
#

.if !defined(CHMLIB_BUILDLINK2_MK)
CHMLIB_BUILDLINK2_MK=	# defined

BUILDLINK_PACKAGES+=			chmlib
BUILDLINK_DEPENDS.chmlib?=		chmlib>=0.31
BUILDLINK_PKGSRCDIR.chmlib?=		../../wip/chmlib

EVAL_PREFIX+=	BUILDLINK_PREFIX.chmlib=chmlib
BUILDLINK_PREFIX.chmlib_DEFAULT=	${LOCALBASE}
BUILDLINK_FILES.chmlib+=	include/chm_lib.h
BUILDLINK_FILES.chmlib+=	lib/libchm.*

BUILDLINK_TARGETS+=	chmlib-buildlink

chmlib-buildlink: _BUILDLINK_USE

.endif	# CHMLIB_BUILDLINK2_MK
