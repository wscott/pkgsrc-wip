$NetBSD$

--- ui/views/views_delegate.h.orig	2016-06-24 01:02:54.000000000 +0000
+++ ui/views/views_delegate.h
@@ -141,7 +141,7 @@ class VIEWS_EXPORT ViewsDelegate {
   // Returns true if the window passed in is in the Windows 8 metro
   // environment.
   virtual bool IsWindowInMetro(gfx::NativeWindow window) const;
-#elif defined(OS_LINUX) && !defined(OS_CHROMEOS)
+#elif defined(OS_LINUX) && !defined(OS_CHROMEOS) || defined(OS_FREEBSD) || defined(OS_NETBSD)
   virtual gfx::ImageSkia* GetDefaultWindowIcon() const;
 #endif
 
