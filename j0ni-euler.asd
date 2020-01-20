(defpackage :j0ni-euler-system (:use :asdf :cl))
(in-package :j0ni-euler-system)

(defsystem j0ni-euler
  :name "j0ni-euler"
  :author "J Irving <j@lollyshouse.ca>"
  :version "1.0"
  :maintainer "J Irving <j@lollyshouse.ca"
  :license "BSD"
  :description "Project Euler Code"
  :long-description ""
  :components
  ((:file "j0ni-euler")
   (:file "shared" :depends-on ("j0ni-euler"))
   (:file "problem1" :depends-on ("j0ni-euler" "shared"))
   (:file "problem2" :depends-on ("j0ni-euler" "shared"))
   (:file "problem3" :depends-on ("j0ni-euler" "shared"))
   (:file "problem4" :depends-on ("j0ni-euler"))
   (:file "problem5" :depends-on ("j0ni-euler"))
   (:file "problem6" :depends-on ("j0ni-euler" "shared"))
   (:file "problem7" :depends-on ("j0ni-euler"))
   (:file "problem8" :depends-on ("j0ni-euler"))
   (:file "problem9" :depends-on ("j0ni-euler"))))
