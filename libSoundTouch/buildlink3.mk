# $NetBSD: buildlink3.mk,v 1.3 2007/01/16 10:19:56 netcap Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBSOUNDTOUCH_BUILDLINK3_MK:=	${LIBSOUNDTOUCH_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	libSoundTouch
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:NlibSoundTouch}
BUILDLINK_PACKAGES+=	libSoundTouch
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}libSoundTouch

.if ${LIBSOUNDTOUCH_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.libSoundTouch+=	libSoundTouch>=1.3.1
BUILDLINK_PKGSRCDIR.libSoundTouch?=	../../wip/libSoundTouch
BUILDLINK_DEPMETHOD.libSoundTouch?=	build
.endif	# LIBSOUNDTOUCH_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
