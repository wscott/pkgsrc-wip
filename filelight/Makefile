# $NetBSD: Makefile,v 1.25 2016/01/10 20:01:05 markd Exp $

DISTNAME=	filelight-${KAPPSVER}
CATEGORIES=	sysutils

HOMEPAGE=	http://kde.org/applications/utilities/filelight/
COMMENT=	Graphical filesystem usage monitor
LICENSE=	gnu-gpl-v2 AND gnu-lgpl-v2.1

.include "../../wip/kde5/applications.mk"

BUILD_DEPENDS+=	kdoctools>=5.19.0:../../devel/kdoctools

USE_TOOLS+=	msgmerge

MAKE_DIRS+=	${PKG_SYSCONFDIR}/xdg
CONF_FILES+=	${PREFIX}/share/examples/kde-xdg/filelightrc \
		${PKG_SYSCONFDIR}/xdg/filelightrc

.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../devel/kparts/buildlink3.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
