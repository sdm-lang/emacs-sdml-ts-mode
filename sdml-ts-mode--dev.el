;;; sdml-ts-mode--dev.el --- Internal -dev support -*- lexical-binding: t; -*-

;; Author: Simon Johnston <johnstonskj@gmail.com>
;; License: see sdml-ts-mode.el

;;; Commentary:

;; Internal module to organize development support functions.

;;; Code:

(defvar sdml-ts-mode--dev-p t)

(defun sdml-ts-mode--dev-makunbound (symbol)
  "Unbind SYMBOL only in development mode."
  (when sdml-ts-mode--dev-p
    (message "DEV: unbind symbol: %s" symbol)
    (makunbound symbol)))

(provide 'sdml-ts-mode--dev)

;;; sdml-ts-mode--dev.el ends here
