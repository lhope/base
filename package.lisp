;;;; Copyright 2011 Google Inc.  All Rights Reserved

;;;; Redistribution and use in source and binary forms, with or without
;;;; modification, are permitted provided that the following conditions are
;;;; met:

;;;;     * Redistributions of source code must retain the above copyright
;;;; notice, this list of conditions and the following disclaimer.
;;;;     * Redistributions in binary form must reproduce the above
;;;; copyright notice, this list of conditions and the following disclaimer
;;;; in the documentation and/or other materials provided with the
;;;; distribution.
;;;;     * Neither the name of Google Inc. nor the names of its
;;;; contributors may be used to endorse or promote products derived from
;;;; this software without specific prior written permission.

;;;; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
;;;; "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
;;;; LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
;;;; A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
;;;; OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
;;;; SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
;;;; LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
;;;; DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
;;;; THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
;;;; (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
;;;; OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

;;;; Author: brown@google.com (Robert Brown)

(in-package #:common-lisp-user)

(defpackage #:com.google.base
  (:documentation "Basic code used by all applications. The code in BASE should be universally
useful, since most packages import BASE symbols by including (:USE #:COM.GOOGLE.BASE) in their
DEFPACKAGE form.")
  (:use #:common-lisp)
  ;; defconst.lisp
  (:export #:defconst)
  ;; error.lisp
  (:export #:missing-argument)
  ;; octet.lisp
  (:export #:octet
           #:octet-vector
           #:make-octet-vector
           #:string-to-utf8-octets
           #:utf8-octets-to-string)
  ;; optimize.lisp
  (:export #:*optimize-default*
           #:*optimize-fast-unsafe*)
  ;; type.lisp
  (:export #:int32
           #:int64
           #:uint32
           #:uint64
           #:+maximum-vector-index+
           #:vector-index))
