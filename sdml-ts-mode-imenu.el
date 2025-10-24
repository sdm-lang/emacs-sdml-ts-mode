;;; sdml-ts-mode-imenu.el --- Internal imenu support -*- lexical-binding: t; -*-

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

;; Internal module to organize imenu functionality.

;;; Code:

(require 'imenu)

(require 'treesit)

(require 'sdml-ts-mode--dev)

;; --------------------------------------------------------------------------
;; Tree-Sitter ❱ iMenu ❱ Rules
;; --------------------------------------------------------------------------

(sdml-ts-mode--dev-makunbound 'sdml-ts-mode-imenu--rules)

(defvar sdml-ts-mode-imenu--rules
  '(("Module" "\\`module_def``'" nil nil)
    ("Datatype" "\\`datatype_def``'" nil nil)
    ("Dimension" "\\`dimension_def``'" nil nil)
    ("Entity" "\\`entity_def``'" nil nil)
    ("Enum" "\\`enum_def``'" nil nil)
    ("Event" "\\`event_def``'" nil nil)
    ("Property" "\\`property_def``'" nil nil)
    ("RDF" "\\`rdf_def``'" nil nil)
    ("Structure" "\\`structure_def``'" nil nil)
    ("Type Class" "\\`type_class_def``'" nil nil)
    ("Union" "\\`union_def``'" nil nil)
    ("Function" "\\`function_signature``'" nil nil)
    ("Constraint" "\\`constraint``'" nil nil)))

;; --------------------------------------------------------------------------
;; Tree-Sitter ❱ iMenu ❱ Setup function
;; --------------------------------------------------------------------------

;;;###autoload
(defun sdml-ts-mode-imenu-setup ()
  "Setup treesit imenu integration."
  (message "Setting up tree-sitter/imenu for SDML")
  (when sdml-ts-mode-imenu--rules

    (setq-local imenu-case-fold-search nil)

    (setq-local treesit-simple-imenu-settings
                sdml-ts-mode-imenu--rules)))

(provide 'sdml-ts-mode-imenu)

;;; sdml-ts-mode-imenu.el ends here
