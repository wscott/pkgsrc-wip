$NetBSD$

fix build for pkgsrc, by allowing qmake to link binaries in situ
and create an install target

--- src/grid/grid.pro.orig	2016-07-01 07:13:14.000000000 +0000
+++ src/grid/grid.pro
@@ -13,4 +13,5 @@ else {
     CONFIG += plugin
 }
 TARGET = $${RLIBNAME}grid
-LIBS += -l$${RLIBNAME}core
+LIBS += -L../core -l$${RLIBNAME}core
+INSTALLS += target
