#|
  This file is a part of get-element-by project.
  Copyright (c) 2015 asciian (asciian@outlook.jp)
|#

(in-package :cl-user)
(defpackage get-element-by-test-asd
  (:use :cl :asdf))
(in-package :get-element-by-test-asd)

(defsystem get-element-by-test
  :author "asciian"
  :license "BSD 2-Clause"
  :depends-on (:get-element-by
               :prove)
  :components ((:module "t"
                :components
                ((:test-file "get-element-by"))))

  :defsystem-depends-on (:prove-asdf)
  :perform (test-op :after (op c)
                    (funcall (intern #.(string :run-test-system) :prove-asdf) c)
                    (asdf:clear-system c)))
