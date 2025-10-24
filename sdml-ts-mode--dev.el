;;; sdml-ts-mode--dev.el --- Internal -dev support -*- lexical-binding: t; -*-

;; Author: Simon Johnston <johnstonskj@gmail.com>

;;; License:

;; Copyright (c) 2023, 2025 Simon Johnston
;;
;; Licensed under the Apache License, Version 2.0 (the "License");
;; you may not use this file except in compliance with the License.
;; You may obtain a copy of the License at
;;
;;     http://www.apache.org/licenses/LICENSE-2.0
;;
;; Unless required by applicable law or agreed to in writing, software
;; distributed under the License is distributed on an "AS IS" BASIS,
;; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
;; See the License for the specific language governing permissions and
;; limitations under the License.

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
