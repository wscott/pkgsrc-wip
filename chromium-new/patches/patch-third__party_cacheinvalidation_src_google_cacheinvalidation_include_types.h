$NetBSD$

--- third_party/cacheinvalidation/src/google/cacheinvalidation/include/types.h.orig	2016-06-24 01:02:47.000000000 +0000
+++ third_party/cacheinvalidation/src/google/cacheinvalidation/include/types.h
@@ -334,6 +334,8 @@ class Status {
      */
     PERMANENT_FAILURE
   };
+  
+  Status() : code_(SUCCESS), message_() {}
 
   /* Creates a new Status object given the code and message. */
   Status(Code code, const string& message) : code_(code), message_(message) {}
