;;; work-theme.el --- think theme
;; Copyright (C) 2022 by Vernon Grant

;; Author: Vernon Grant <vernon@ruppell.io>
;; Version: 1.0.0
;; Keywords: theme, light, red
;; Homepage: https://github.com/VernonGrant/dotfiles

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; A low contrast theme for Emacs that works well in bright and dark settings.

;;; Code:

(deftheme work  "A low contrast theme for Emacs that works well in bright and dark settings.")

(let* (
       (fg         "#ffe4e1")  ;; Misty Rose
       (fg-muted   "#cdb7b5")  ;; Misty Rose 3
       (fg-darker   "#eed5d2")  ;; Misty Rose 2

       (bg         "#545454")  ;; Gray 33
       (bg-muted   "#616161")  ;; Gray 38
       (bg-darker  "#474747")  ;; Gray 28

       (comment    "#d2b48c")
       (string     "#d8bfd8")
       (keyword    "#ffa07a")
       (variable   "#eee8aa")
       (type       "#cdcdc1")
       (constant   "#ffdab9")
       (reference   "#b0c4de")
       (preprocessor   "#b3d7ff")
       (region     bg-darker)
       (cursor     "#eeb422")

       (attention  "#ffb90f")

       ;; General
       (amber  "#ffa54f")
       (amber-fg  "#f4a460")
       (amber-bg  "#6b6654")

       (red    "#f08080")
       (red-fg    "#ffb6c1")
       (red-bg    "#735454")

       (green   "#b4eeb4")
       (green-fg   "#9bcd9b")
       (green-bg    "#546454")

       (whitespace bg-muted))

  ;; LSP UI border colors.
  (setq-default lsp-ui-doc-border bg-darker)

  (custom-theme-set-faces
   'work

   ;; General
   `(default                              ((t (:foreground ,fg :background ,bg))))
   `(link                                 ((t (:foreground ,keyword :underline t))))
   `(region                               ((t (:background ,region))))
   `(match                                ((t (:background ,region))))
   `(cursor                               ((t (:foreground ,fg :background ,cursor))))
   `(success                              ((t (:foreground ,keyword))))
   `(hl-line                              ((t (:background ,bg-muted))))
   `(font-lock-builtin-face               ((t (:foreground ,keyword))))
   `(font-lock-comment-face               ((t (:foreground ,comment))))
   `(font-lock-doc-string-face            ((t (:foreground ,comment))))
   `(font-lock-doc-face                   ((t (:foreground ,comment))))
   `(font-lock-constant-face              ((t (:foreground ,constant))))
   `(font-lock-function-name-face         ((t (:foreground ,fg))))
   `(font-lock-keyword-face               ((t (:foreground ,keyword))))
   `(font-lock-reference-face             ((t (:foreground ,reference))))
   `(font-lock-string-face                ((t (:foreground ,string))))
   `(font-lock-type-face                  ((t (:foreground ,type))))
   `(font-lock-variable-name-face         ((t (:foreground ,variable))))
   `(font-lock-warning-face               ((t (:background ,region :foreground ,amber))))
   `(font-lock-preprocessor-face          ((t (:foreground ,constant))))
   `(button                               ((t (:foreground ,reference :underline ,reference))))

   ;; NOTE: Not sure where this is being used.
   ;; `(Info-quoted                          ((t (:foreground ,attention))))
   ;; `(custom-group-tag-1                   ((t (:foreground ,attention))))

   ;; Comint buffers
   `(comint-highlight-prompt          ((t (:foreground ,constant))))

   ;; Help
   `(help-key-binding                 ((t (:foreground ,constant))))

   ;; Line numbers
   `(line-number                      ((t (:foreground ,fg-muted  :background ,nil))))
   `(line-number-current-line         ((t (:foreground ,fg :background ,bg-muted :bold t))))

   ;; Fringes
   `(fringe                           ((t (:foreground ,bg-darker :background ,bg-darker))))
   `(vertical-border                  ((t (:foreground ,bg-darker :background ,bg-darker))))

   ;; Whitespace
   `(whitespace-indentation            ((t (:background nil))))
   `(whitespace-newline                ((t (:foreground ,whitespace :background nil))))
   `(whitespace-missing-newline-at-eof ((t (:foreground ,whitespace :background nil))))
   `(whitespace-space                  ((t (:foreground ,whitespace :background nil))))
   `(whitespace-space-after-tab        ((t (:foreground ,whitespace :background nil))))
   `(whitespace-space-before-tab       ((t (:foreground ,whitespace :background nil))))
   `(whitespace-tab                    ((t (:foreground ,whitespace :background nil))))
   `(whitespace-trailing               ((t (:foreground ,whitespace :background nil))))

   ;; Column Indicator
   `(fill-column-indicator                ((t (:foreground ,bg-muted :background ,nil))))

   ;; Paren Match
   `(show-paren-match                      ((t (:foreground ,attention :background ,bg-darker :bold t))))
   `(show-paren-match-expression           ((t (:foreground ,attention :background ,bg-darker))))
   `(show-paren-mismatch                   ((t (:foreground ,red :background ,bg-darker :bold t))))

   ;; Mode Line
   `(mode-line                            ((t (:foreground ,fg :background ,bg-darker))))
   `(mode-line-inactive                   ((t (:foreground ,fg-muted :background ,bg-muted))))
   `(mode-line-buffer-id                  ((t (:foreground ,constant))))

   ;; El Doc
   `(eldoc-highlight-function-argument   ((t (:foreground ,attention  :background ,bg-darker))))

   ;; Minibuffer
   `(minibuffer-prompt                    ((t (:foreground ,constant :bold t))))

   ;; I-Search, Highlighting
   `(isearch                              ((t (:foreground ,attention :background ,region :bold t))))
   `(isearch-fail                         ((t (:foreground ,amber :background ,region))))
   `(lazy-highlight                       ((t (:foreground ,attention :background ,bg-muted))))
   `(highlight                            ((t (:foreground ,fg :background ,region))))

   ;; Dired
   `(dired-header                         ((t (:foreground ,keyword))))
   `(dired-directory                      ((t (:foreground ,constant))))
   `(dired-ignored                        ((t (:foreground ,fg-muted))))
   `(dired-perm-write                     ((t (:foreground ,keyword))))
   `(dired-broken-symlink                 ((t (:foreground ,red))))
   `(all-the-icons-dired-dir-face         ((t (:foreground ,fg-darker))))

   ;; Completions, shows available completions
   `(completions-common-part              ((t (:foreground ,attention :bold t))))
   `(completions-first-difference         ((t (:foreground ,constant))))
   `(completions-annotations              ((t (:foreground ,comment))))
   `(completions-first-difference         ((t (:bold t))))

   ;; Web Mode
   `(web-mode-html-tag-bracket-face       ((t (:foreground ,fg))))
   `(web-mode-html-tag-face               ((t (:foreground ,constant))))
   `(web-mode-html-attr-name-face         ((t (:foreground ,keyword))))

   ;; Vertico
   `(vertico-current                      ((t (:background ,region))))

   ;; Blamer
   `(blamer-face                          ((t ( :foreground ,fg-muted :background ,nil :height 120 :italic t))))

   ;; Lsp
   ;; `(lsp-flycheck-info-unnecessary-face ((t (:foreground ,bg-muted))))
   `(lsp-ui-doc-header                  ((t (:foreground ,fg :background ,bg-muted))))
   `(lsp-ui-doc-background              ((t (:background ,bg-darker))))

   ;; How to style this correctly?
   `(lsp-lsp-flycheck-info-unnecessary-face ((t (:foreground ,fg-muted :underline `(:style wave :color ,green-fg)))))

   ;; Company
   `(company-tooltip                      ((t (:foreground ,fg :background ,bg))))
   `(company-tooltip-selection            ((t (:background ,bg-darker))))
   `(company-tooltip-common               ((t (:foreground ,attention :bold t ))))
   `(company-tooltip-common-selection     ((t (:foreground ,attention :background ,bg :bold t ))))
   `(company-scrollbar-bg                 ((t (:background ,bg-darker))))
   `(company-scrollbar-fg                 ((t (:background ,fg))))
   `(company-tooltip-annotation           ((t (:foreground ,comment))))
   `(company-tooltip-annotation-selection ((t (:foreground ,comment))))

   ;; Which key
   `(which-key-command-description-face   ((t (:foreground ,fg))))
   `(which-key-docstring-face             ((t (:foreground ,comment))))
   `(which-key-group-description-face     ((t (:foreground ,keyword))))
   `(which-key-command-description-face   ((t (:foreground ,fg))))
   `(which-key-key-face                   ((t (:foreground ,constant))))
   `(which-key-local-map-description-face ((t (:foreground ,comment))))
   `(which-key-note-face                  ((t (:foreground ,fg-muted))))
   `(which-key-separator-face             ((t (:foreground ,fg-muted))))
   `(which-key-special-key-face           ((t (:background ,bg-muted :foreground ,type))))

   ;; TODO: Check all markdown faces.
   ;; Markdown
   `(markdown-inline-code-face ((t (:foreground ,fg-muted))))

   ;; TODO: Improve all org mode styling.
   ;; Org
   `(org-special-keyword         ((t (:foreground ,keyword))))
   `(org-priority                ((t (:foreground ,type))))
   `(org-tag                     ((t (:foreground ,reference))))
   `(org-date                    ((t (:foreground ,variable))))
   `(org-todo                    ((t (:foreground ,green))))
   `(org-done                    ((t (:foreground ,fg-muted))))
   `(org-headline-done           ((t (:foreground ,fg-muted))))
   `(org-block-begin-line        ((t (:foreground ,fg-muted))))
   `(org-meta-line               ((t (:foreground ,fg-muted))))
   `(org-code                    ((t (:foreground ,fg))))
   `(org-verbatim                ((t (:foreground ,fg-muted))))
   `(org-agenda-structure        ((t (:foreground ,keyword))))
   `(org-agenda-date             ((t (:foreground ,constant))))
   `(org-agenda-done             ((t (:foreground ,fg-muted))))
   `(org-scheduled               ((t (:foreground ,variable))))
   `(org-scheduled-previously    ((t (:foreground ,amber))))
   `(org-imminent-deadline       ((t (:foreground ,red))))
   `(org-upcoming-deadline       ((t (:foreground ,red-fg))))
   `(org-date-selected           ((t (:foreground ,attention :background ,bg-darker))))
   `(org-drawer                  ((t (:foreground ,type))))
   `(org-level-1                 ((t (:foreground ,keyword))))
   `(org-level-2                 ((t (:foreground ,constant))))
   `(org-level-3                 ((t (:foreground ,variable))))
   `(org-level-4                 ((t (:foreground ,fg))))
   `(org-level-5                 ((t (:foreground ,fg))))
   `(org-level-6                 ((t (:foreground ,fg-muted))))
   `(org-level-7                 ((t (:foreground ,fg-muted))))
   `(org-level-8                 ((t (:foreground ,fg-muted))))

   ;; Flycheck
   `(flycheck-info    ((t (:underline (:style line :color ,green)))))
   `(flycheck-warning ((t (:underline (:style line :color ,amber)))))
   `(flycheck-error   ((t (:underline (:style line :color ,red)))))

   ;; Flyspell
    `(flyspell-incorrect ((t (:underline (:style wave :color ,red-fg)))))
    `(flyspell-duplicate ((t (:underline (:style wave :color ,amber-fg)))))

   ;; Magit
   `(magit-section-highlight              ((t (:background ,bg-darker))))
   `(magit-section-heading                ((t (:background ,nil :foreground ,constant))))
   `(magit-sequence-onto                  ((t (:foreground ,fg-muted ))))
   `(magit-sequence-done                  ((t (:foreground ,fg-muted))))
   `(magit-sequence-exec                  ((t (:foreground ,fg-muted))))
   `(magit-dimmed                         ((t (:foreground ,fg-muted))))
   `(magit-hash                           ((t (:foreground ,fg-muted))))
   `(magit-head                           ((t (:foreground ,keyword))))

   `(magit-diff-hunk-heading-highlight    ((t (:background ,bg-darker :foreground ,constant))))
   `(magit-diff-hunk-heading              ((t (:background ,bg-darker :foreground ,fg))))

   `(magit-diff-added             ((t (:background ,green-bg :foreground ,fg-muted))))
   `(magit-diff-removed           ((t (:background ,red-bg :foreground ,fg-muted))))
   `(magit-diff-context           ((t (:background ,bg :foreground ,fg))))
   `(magit-diff-context-highlight ((t (:background ,bg-darker :foreground ,fg-muted))))
   `(magit-diff-added-highlight   ((t (:background ,green-bg :foreground ,green-fg))))
   `(magit-diff-removed-highlight ((t (:background ,red-bg :foreground ,red-fg))))

   ;; Git gutter:
   `(git-gutter:added           ((t (:background ,green-bg :foreground ,green-fg))))
   `(git-gutter:deleted         ((t (:background ,red-bg :foreground ,red-fg))))
   `(git-gutter:modified        ((t (:background ,amber-bg :foreground ,amber-fg))))
   `(git-gutter:unchanged       ((t (:background ,bg :foreground ,fg))))
   `(git-gutter-fr:added        ((t (:background ,green-bg :foreground ,green-fg))))
   `(git-gutter-fr:deleted      ((t (:background ,red-bg :foreground ,red-fg))))
   `(git-gutter-fr:modified     ((t (:background ,amber-bg :foreground ,red-fg))))

   ;; Version Control:
   ;; `(vc-annotate-face-3F3FFF   ((t (:background ,green-bg :foreground ,green-fg))))
   ;; `(vc-annotate-face-3F6CFF   ((t (:background ,green-bg :foreground ,green-fg))))
   ;; `(vc-annotate-face-3FC6FF   ((t (:background ,green-bg :foreground ,green-fg))))
   ;; `(vc-annotate-face-3FF3FF   ((t (:background ,green-bg :foreground ,green-fg))))
   ;; `(vc-annotate-face-3FFF83   ((t (:background ,green-bg :foreground ,green-fg))))
   ;; `(vc-annotate-face-3FFFB0   ((t (:background ,green-bg :foreground ,green-fg))))
   ;; `(vc-annotate-face-3FFFDD   ((t (:background ,green-bg :foreground ,green-fg))))
   ;; `(vc-annotate-face-56FF3F   ((t (:background ,green-bg :foreground ,green-fg))))
   ;; `(vc-annotate-face-83FF3F   ((t (:background ,green-bg :foreground ,green-fg))))
   ;; `(vc-annotate-face-FF3F3F   ((t (:background ,green-bg :foreground ,green-fg))))
   ;; `(vc-annotate-face-FF6C3F   ((t (:background ,green-bg :foreground ,green-fg))))
   ;; `(vc-annotate-face-FF993F   ((t (:background ,green-bg :foreground ,green-fg))))

   ;; Ido
   ;; `(ido-subdir                           ((t (:foreground ,fg :bold t))))
   ;; `(ido-first-match                      ((t (:foreground ,keyword))))
   ;; `(ido-only-match                       ((t (:foreground ,keyword))))
   ;; `(ido-indicator                        ((t (:foreground ,constant))))
   ;; `(ido-incomplete-regexp                ((t (:foreground ,amber))))

   ;; GNU Make
   ;; `(makefile-targets                     ((t (:foreground ,keyword))))

   ;; TODO: Add muted colors for all icons.
   ;; All the icons:
   ;; all-the-icons-blue
   ;; all-the-icons-blue-alt
   ;; all-the-icons-completion-dir-face
   ;; all-the-icons-cyan
   ;; all-the-icons-cyan-alt
   ;; all-the-icons-dblue
   ;; all-the-icons-dcyan
   ;; all-the-icons-dgreen
   ;; all-the-icons-dired-dir-face
   ;; all-the-icons-dmaroon
   ;; all-the-icons-dorange
   ;; all-the-icons-dpink
   ;; all-the-icons-dpurple
   ;; all-the-icons-dred
   ;; all-the-icons-dsilver
   ;; all-the-icons-dyellow
   ;; all-the-icons-green
   ;; all-the-icons-lblue
   ;; all-the-icons-lcyan
   ;; all-the-icons-lgreen
   ;; all-the-icons-lmaroon
   ;; all-the-icons-lorange
   ;; all-the-icons-lpink
   ;; all-the-icons-lpurple
   ;; all-the-icons-lred
   ;; all-the-icons-lsilver
   ;; all-the-icons-lyellow
   ;; all-the-icons-maroon
   ;; all-the-icons-orange
   ;; all-the-icons-pink
   ;; all-the-icons-purple
   ;; all-the-icons-purple-alt
   ;; all-the-icons-red
   ;; all-the-icons-red-alt
   ;; all-the-icons-silver
   ;; all-the-icons-yellow

   ;; TODO: Check all markdown faces.
   ;; Flyspell
   ;; `(flyspell-incorrect                   ((t (:underline ,t))))
   ;; `(flyspell-duplicate                   ((t (:underline ,t))))

   ;; `(lsp-flycheck-info-unnecessary-face ((t (:forground :inherit :underline :color ,green))))
   ;; lsp-flycheck-info-unnecessary-face
   ;; '(lsp-ui-doc-header ((t (:foreground ,fg :background ,bg-muted))))
   ;; '(lsp-ui-doc-background ((t (:background ,bg-darker))))

   ;; Magit
   ;; `(all-the-icons-dsilver ((t (:foreground ,bg-muted))))
   ;; all-the-icons-dsilver

   ;; Vterm
   ;; vterm-color-black                       abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ
   ;; vterm-color-blue                        abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ
   ;; vterm-color-bright-black                abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ
   ;; vterm-color-bright-blue                 abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ
   ;; vterm-color-bright-cyan                 abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ
   ;; vterm-color-bright-green                abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ
   ;; vterm-color-bright-magenta              abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ
   ;; vterm-color-bright-red                  abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ
   ;; vterm-color-bright-white                abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ
   ;; vterm-color-bright-yellow               abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ
   ;; vterm-color-cyan                        abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ
   ;; vterm-color-green                       abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ
   ;; vterm-color-inverse-video               abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ
   ;; vterm-color-magenta                     abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ
   ;; vterm-color-red                         abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ
   ;; vterm-color-underline                   abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ
   ;; vterm-color-white                       abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ
   ;; vterm-color-yellow                      abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ

   ;; TODO: Complication
   ;; compilation-error
   ;; compilation-info
   ;; compilation-line-number
   ;; compilation-mode-line-exit
   ;; compilation-mode-line-fail
   ;; compilation-mode-line-run
   ;; compilation-warning
   ;; completions-annotations
   ;; completions-common-part
   ;; completions-first-difference
   ;; completions-group-separator
   ;; completions-group-title
   ;; completions-highlight

   )
  )

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'work)

;;; work-theme.el ends here
