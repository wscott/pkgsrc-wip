# $NetBSD: buildlink3.mk,v 1.2 2014/05/15 21:49:11 szptvlfn Exp $

BUILDLINK_TREE+=	hs-transformers-base

.if !defined(HS_TRANSFORMERS_BASE_BUILDLINK3_MK)
HS_TRANSFORMERS_BASE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-transformers-base+=	hs-transformers-base>=0.4.1
BUILDLINK_PKGSRCDIR.hs-transformers-base?=	../../devel/hs-transformers-base

.include "../../devel/hs-transformers/buildlink3.mk"
.endif	# HS_TRANSFORMERS_BASE_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-transformers-base
