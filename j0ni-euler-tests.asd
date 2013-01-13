(defpackage :j0ni-euler-tests-system (:use :asdf :cl))
(in-package :j0ni-euler-tests-system)

(defsystem j0ni-euler-tests
  :name "j0ni-euler-tests"
  :author "J Irving <j@lollyshouse.ca>"
  :version "1.0"
  :maintainer "J Irving <j@lollyshouse.ca>"
  :license "BSD"
  :description "Tests for my Project Euler code"
  :long-description ""
  :components ((:file "j0ni-euler-tests"))
  :depends-on ("j0ni-euler" "lisp-unit"))
