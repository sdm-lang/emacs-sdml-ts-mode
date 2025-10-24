# SDML Mode for Emacs

![SDML Logo Text](https://raw.githubusercontent.com/sdm-lang/.github/main/profile/horizontal-text.svg)

This package provides an Emacs tree-sitter based major mode for SDML - the
[Simple Domain Modeling Language](https://github.com/sdm-lang/tree-sitter-sdml).

[![License-Apache_2.0](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Eask Workflow](https://github.com/sdm-lang/emacs-sdml-ts-mode/actions/workflows/emacs-eask.yml/badge.svg)](https://github.com/sdm-lang/emacs-sdml-ts-mode/actions/workflows/emacs-eask.yml)
[![MELPA](https://melpa.org/packages/sdml-ts-mode-badge.svg)](https://melpa.org/#/sdml-ts-mode)
[![Stargazer Count](https://img.shields.io/github/stars/sdm-lang/emacs-sdml-ts-mode.svg)](https://github.com/sdm-lang/emacs-sdml-ts-mode/stargazers)

## Installing

Install is easiest from MELPA, here's how with `use-package`.

```elisp
(use-package sdml-ts-mode)
;; or
(use-package sdml-ts-mode
  :vc (:url "https://github.com/sdm-lang/emacs-sdml-ts-mode"))
```

Or, interactively; `M-x package-install RET sdml-mode RET`

## Usage

Once installed the major mode should be used for any file ending in `.sdm` or
`.sdml` with highlighting and indentation support.

## Ctags Support

Using [Universal Ctags](https://ctags.io) and the [sdml-ctags](https://github.com/sdm-lang/sdml-ctags) package provides a tagging solution for
SDML source. The `sdml-mode-ctags-mode` will determine if [`company-mode`](https://company-mode.github.io/) installed
and add SDML as a supported tag backend. Additionally, this minor mode provides
a command to re-create the project's tag file. The image below shows company
used as the completion UI for type completion when editing.

![Completion](./images/emacs-completion.png)

Command `sdml-mode-ctags-generate` has the default binding `C-c C-s T`. It uses the
variables `sdml-mode-ctags-command` and `sdml-mode-ctags-output-file-name` to
generate the tag file.

## Tool Commands

A number of the tools provided by the SDML command-line tool are exposed as
Emacs commands. The following image shows two tools in use, the module
dependency tree and the validation tool.

![Tool Commands](./images/emacs-tools.png)

### Dependency Tree

* Command `sdml-mode-current-buffer-dependency-tree` has the default binding `C-c
  C-s t`.
* The command will prompt for the maximum depth of the tree where 0 means
  unbounded. This is a command prefix and can therefore be specified with the
  usual `C-u` binding.
* The resulting tree view can be refreshed using the common binding of `g` and
  quit with `q`.
  
### Dependency Graph

If running under a `window-sytem` it is also possible to display the current
buffer's dependencies as a directed graph. The tool will generate an SVG and
display in a read-only window.

* Command `sdml-mode-current-buffer-dependency-graph` has the default binding `C-c
  C-s M-t`.

### Full Validation

* Command `sdml-mode-validate-current-buffer` has the default binding `C-c C-s v`.
* Command `sdml-mode-validate-file` has the default binding `C-c C-s M-v`.
* The variable `sdml-mode-validation-level` denotes the level of messages produced
  by the validator, with a default of `warnings`.
* The output uses the standard `compilation-mode` with all the common bindings are
  available.

### Abbreviations and Skeletons

TBD

## Prettify Symbol

TBD

### Default Key Bindings

TBD

## Add-Ons

TBD

## License

This package is released under the Apache License, Version 2.0. See the LICENSE
file in the repository for details.

## Changes

### Version 0.1.0

Initial release.
