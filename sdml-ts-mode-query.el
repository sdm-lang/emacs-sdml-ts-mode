;;; sdml-ts-mode-query.el --- Internal query support -*- lexical-binding: t; -*-

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

;; Copyright 2025 Simon Johnston <johnstonskj@gmail.com>
;; 
;; Permission is hereby granted, free of charge, to any person obtaining a copy
;; of this software and associated documentation files (the “Software”), to deal
;; in the Software without restriction, including without limitation the rights to
;; use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
;; the Software, and to permit persons to whom the Software is furnished to do so,
;; subject to the following conditions:
;; 
;; The above copyright notice and this permission notice shall be included in all
;; copies or substantial portions of the Software.
;; 
;; THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
;; INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
;; PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
;; HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
;; OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
;; SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

;;; Commentary:

;; Internal module to organize all interesting query.
;;

;;; Code:

(defconst sdml-ts-mode-query--any-comment '(line_comment))

(defconst sdml-ts-mode-query--global-keywords
  '[ "as"
     "assert"
     "class"
     "datatype"
     "dimension"
     "end"
     "entity"
     "enum"
     "event"
     "from"
     "group"
     "import"
     "is"
     "metric"
     "module"
     "of"
     "property"
     "rdf"
     "structure"
     "union"
     (unknown_type)
     ])

(defconst sdml-ts-mode-query--xsd-datatypes
  '("anyURI"
    "base64Binary"
    "boolean"
    "byte"
    "date"
    "dateTime"
    "dateTimeStamp"
    "dayTimeDuration"
    "decimal"
    "double"
    "duration"
    "float"
    "gDay"
    "gMonth"
    "gMonthDay"
    "gYear"
    "gYearMonth"
    "hexBinary"
    "int"
    "integer"
    "iri"
    "language"
    "long"
    "negativeInteger"
    "nonNegativeInteger"
    "nonPositiveInteger"
    "normalizedString"
    "positiveInteger"
    "short"
    "string"
    "time"
    "token"
    "unsigned"
    "unsignedByte"
    "unsignedInt"
    "unsignedLong"
    "unsignedShort"
    "yearMonthDuration"))

(defconst sdml-ts-mode-query--owl-datatypes '("rational" "real"))

(defconst sdml-ts-mode-query--owl-classes '("Nothing" "Thing"))

(defconst sdml-ts-mode-query--sdml-datatypes '("binary" "iri"))

(defconst sdml-ts-mode-query--builtin-types '(builtin_types))

(provide 'sdml-ts-mode-query)

;;; sdml-ts-mode-query.el ends here
