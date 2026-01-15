;;; nerv-theme.el --- NERV Theme for Emacs -*- lexical-binding: t -*-

;; Copyright (C) 2025 Jane Manchun Wong

;; Author: Jane Manchun Wong <https://wongmjane.com>
;; URL: https://github.com/wongmjane/nerv-theme
;; Version: 1.0.0
;; Package-Requires: ((emacs "24.1"))
;; Keywords: faces, theme, dark, cyberpunk
;; SPDX-License-Identifier: MIT

;;; Commentary:

;; NERV is a dark theme inspired by 80s/90s cyberpunk interfaces,
;; Evangelion's NERV headquarters, and the green-tinted cinematography
;; of Wong Kar-wai.  Industrial control terminals meet the melancholic
;; warmth of In the Mood for Love.
;;
;; Deep oceanic greens meet warning-sign orange.  Phosphor glow on aging
;; CRT monitors.  The quiet hum of a command terminal in an underground
;; facility.  Film grain over midnight corridors.

;;; Code:

(deftheme nerv
  "NERV theme - A dark cyberpunk theme inspired by Evangelion and Wong Kar-wai.")

(let ((class '((class color) (min-colors 89)))
      ;; Core colors from NERV palette
      (bg           "#0a1612")
      (bg-elevated  "#0f1f1a")
      (bg-highlight "#1a2e28")
      (border       "#2a4a3d")
      (fg           "#8fb3a5")
      (fg-muted     "#5a7a6d")
      (fg-dim       "#4a6a5d")

      ;; Accent colors
      (accent       "#e85d04")
      (accent-hover "#f4820b")

      ;; Status colors
      (error        "#c92a2a")
      (warning      "#d4a017")
      (success      "#4a8c5c")
      (info         "#3a7a8c")

      ;; Syntax colors
      (comment      "#4a6a5d")
      (string       "#4a8c5c")
      (number       "#d4a017")
      (keyword      "#e85d04")
      (type         "#3a7a8c")
      (function     "#8a5a8a")
      (variable     "#8fb3a5")
      (property     "#c97a4a")
      (constant     "#5a9a8c")
      (operator     "#5a7a6d")
      (bracket      "#8e8e93")
      (escape       "#659d74"))

  (custom-theme-set-faces
   'nerv

   ;; Basic faces
   `(default ((,class (:foreground ,fg :background ,bg))))
   `(cursor ((,class (:background ,accent))))
   `(region ((,class (:background "#e85d0450" :distant-foreground ,fg))))
   `(highlight ((,class (:background ,bg-highlight))))
   `(secondary-selection ((,class (:background ,bg-elevated))))
   `(shadow ((,class (:foreground ,fg-dim))))
   `(match ((,class (:foreground ,accent :background "#e85d0433"))))
   `(lazy-highlight ((,class (:foreground ,fg :background "#d4a0173f"))))
   `(error ((,class (:foreground ,error :weight bold))))
   `(warning ((,class (:foreground ,warning :weight bold))))
   `(success ((,class (:foreground ,success :weight bold))))

   ;; Font lock (syntax highlighting)
   `(font-lock-builtin-face ((,class (:foreground ,constant))))
   `(font-lock-comment-face ((,class (:foreground ,comment :slant italic))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,comment :slant italic))))
   `(font-lock-constant-face ((,class (:foreground ,constant))))
   `(font-lock-doc-face ((,class (:foreground ,fg-muted :slant italic))))
   `(font-lock-function-name-face ((,class (:foreground ,function))))
   `(font-lock-keyword-face ((,class (:foreground ,keyword))))
   `(font-lock-negation-char-face ((,class (:foreground ,error))))
   `(font-lock-preprocessor-face ((,class (:foreground ,accent))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,escape))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,escape))))
   `(font-lock-string-face ((,class (:foreground ,string))))
   `(font-lock-type-face ((,class (:foreground ,type))))
   `(font-lock-variable-name-face ((,class (:foreground ,variable))))
   `(font-lock-warning-face ((,class (:foreground ,warning))))

   ;; Line numbers
   `(line-number ((,class (:foreground ,fg-dim :background ,bg))))
   `(line-number-current-line ((,class (:foreground ,fg :background ,bg :weight bold))))

   ;; Mode line
   `(mode-line ((,class (:foreground ,fg :background ,bg-elevated :box (:line-width 1 :color ,border)))))
   `(mode-line-inactive ((,class (:foreground ,fg-dim :background ,bg :box (:line-width 1 :color ,border)))))
   `(mode-line-buffer-id ((,class (:foreground ,fg :weight bold))))
   `(mode-line-emphasis ((,class (:foreground ,accent :weight bold))))
   `(mode-line-highlight ((,class (:background ,bg-highlight))))

   ;; Header line
   `(header-line ((,class (:foreground ,fg :background ,bg-elevated :box (:line-width 1 :color ,border)))))

   ;; Fringe
   `(fringe ((,class (:foreground ,fg-dim :background ,bg))))
   `(vertical-border ((,class (:foreground ,border))))

   ;; Minibuffer
   `(minibuffer-prompt ((,class (:foreground ,accent :weight bold))))

   ;; Isearch
   `(isearch ((,class (:foreground ,bg :background ,accent :weight bold))))
   `(isearch-fail ((,class (:foreground ,error :weight bold))))

   ;; Links
   `(link ((,class (:foreground ,accent :underline t))))
   `(link-visited ((,class (:foreground ,function :underline t))))

   ;; Trailing whitespace
   `(trailing-whitespace ((,class (:background ,error))))

   ;; Show paren
   `(show-paren-match ((,class (:foreground ,accent :background "#e85d0433" :weight bold))))
   `(show-paren-mismatch ((,class (:foreground ,error :background "#c92a2a33" :weight bold))))

   ;; Dired
   `(dired-directory ((,class (:foreground ,type :weight bold))))
   `(dired-symlink ((,class (:foreground ,accent))))
   `(dired-marked ((,class (:foreground ,accent :weight bold))))
   `(dired-flagged ((,class (:foreground ,error :weight bold))))

   ;; Org mode
   `(org-level-1 ((,class (:foreground ,fg :weight bold :height 1.3))))
   `(org-level-2 ((,class (:foreground ,fg :weight bold :height 1.2))))
   `(org-level-3 ((,class (:foreground ,fg :weight bold :height 1.1))))
   `(org-level-4 ((,class (:foreground ,fg :weight bold))))
   `(org-level-5 ((,class (:foreground ,fg))))
   `(org-level-6 ((,class (:foreground ,fg))))
   `(org-level-7 ((,class (:foreground ,fg))))
   `(org-level-8 ((,class (:foreground ,fg))))
   `(org-document-title ((,class (:foreground ,fg :weight bold :height 1.4))))
   `(org-document-info ((,class (:foreground ,fg-muted))))
   `(org-document-info-keyword ((,class (:foreground ,comment))))
   `(org-meta-line ((,class (:foreground ,comment))))
   `(org-block ((,class (:background ,bg-elevated))))
   `(org-block-begin-line ((,class (:foreground ,comment :background ,bg-elevated))))
   `(org-block-end-line ((,class (:foreground ,comment :background ,bg-elevated))))
   `(org-code ((,class (:foreground ,string :background ,bg-elevated))))
   `(org-verbatim ((,class (:foreground ,string))))
   `(org-link ((,class (:foreground ,accent :underline t))))
   `(org-date ((,class (:foreground ,constant))))
   `(org-todo ((,class (:foreground ,error :weight bold))))
   `(org-done ((,class (:foreground ,success :weight bold))))
   `(org-headline-done ((,class (:foreground ,fg-muted :strike-through t))))

   ;; Markdown
   `(markdown-header-face-1 ((,class (:foreground ,fg :weight bold :height 1.3))))
   `(markdown-header-face-2 ((,class (:foreground ,fg :weight bold :height 1.2))))
   `(markdown-header-face-3 ((,class (:foreground ,fg :weight bold :height 1.1))))
   `(markdown-header-face-4 ((,class (:foreground ,fg :weight bold))))
   `(markdown-header-face-5 ((,class (:foreground ,fg))))
   `(markdown-header-face-6 ((,class (:foreground ,fg))))
   `(markdown-bold-face ((,class (:weight bold))))
   `(markdown-italic-face ((,class (:slant italic))))
   `(markdown-code-face ((,class (:foreground ,string :background ,bg-elevated))))
   `(markdown-inline-code-face ((,class (:foreground ,string :background ,bg-elevated))))
   `(markdown-pre-face ((,class (:foreground ,string :background ,bg-elevated))))
   `(markdown-link-face ((,class (:foreground ,accent))))
   `(markdown-url-face ((,class (:foreground ,constant :underline t))))

   ;; Company
   `(company-tooltip ((,class (:foreground ,fg :background ,bg-elevated))))
   `(company-tooltip-selection ((,class (:foreground ,bg :background ,accent))))
   `(company-tooltip-common ((,class (:foreground ,accent))))
   `(company-tooltip-annotation ((,class (:foreground ,fg-muted))))
   `(company-scrollbar-bg ((,class (:background ,border))))
   `(company-scrollbar-fg ((,class (:background ,accent))))
   `(company-preview ((,class (:foreground ,fg-muted :background ,bg-elevated))))
   `(company-preview-common ((,class (:foreground ,accent :background ,bg-elevated))))

   ;; Ivy
   `(ivy-current-match ((,class (:foreground ,bg :background ,accent :weight bold))))
   `(ivy-minibuffer-match-face-1 ((,class (:foreground ,fg))))
   `(ivy-minibuffer-match-face-2 ((,class (:foreground ,accent :weight bold))))
   `(ivy-minibuffer-match-face-3 ((,class (:foreground ,accent :weight bold))))
   `(ivy-minibuffer-match-face-4 ((,class (:foreground ,accent :weight bold))))

   ;; Helm
   `(helm-selection ((,class (:foreground ,bg :background ,accent :weight bold))))
   `(helm-match ((,class (:foreground ,accent :weight bold))))
   `(helm-source-header ((,class (:foreground ,fg :background ,bg-elevated :weight bold))))
   `(helm-candidate-number ((,class (:foreground ,accent))))

   ;; Magit
   `(magit-section-heading ((,class (:foreground ,accent :weight bold))))
   `(magit-section-highlight ((,class (:background ,bg-highlight))))
   `(magit-diff-file-heading ((,class (:foreground ,fg :weight bold))))
   `(magit-diff-file-heading-highlight ((,class (:foreground ,fg :background ,bg-highlight :weight bold))))
   `(magit-diff-hunk-heading ((,class (:foreground ,fg-muted :background ,bg-elevated))))
   `(magit-diff-hunk-heading-highlight ((,class (:foreground ,fg :background ,bg-elevated))))
   `(magit-diff-context ((,class (:foreground ,fg-muted))))
   `(magit-diff-context-highlight ((,class (:foreground ,fg :background ,bg-elevated))))
   `(magit-diff-added ((,class (:foreground ,success :background "#4a8c5c21"))))
   `(magit-diff-added-highlight ((,class (:foreground ,success :background "#4a8c5c33"))))
   `(magit-diff-removed ((,class (:foreground ,error :background "#c92a2a21"))))
   `(magit-diff-removed-highlight ((,class (:foreground ,error :background "#c92a2a33"))))
   `(magit-branch-local ((,class (:foreground ,type :weight bold))))
   `(magit-branch-remote ((,class (:foreground ,constant :weight bold))))
   `(magit-branch-current ((,class (:foreground ,accent :weight bold :box t))))
   `(magit-tag ((,class (:foreground ,function :weight bold))))
   `(magit-hash ((,class (:foreground ,fg-muted))))

   ;; Diff
   `(diff-header ((,class (:foreground ,fg :background ,bg-elevated))))
   `(diff-file-header ((,class (:foreground ,fg :weight bold))))
   `(diff-added ((,class (:foreground ,success :background "#4a8c5c21"))))
   `(diff-removed ((,class (:foreground ,error :background "#c92a2a21"))))
   `(diff-changed ((,class (:foreground ,warning :background "#d4a01721"))))
   `(diff-refine-added ((,class (:foreground ,success :background "#4a8c5c33"))))
   `(diff-refine-removed ((,class (:foreground ,error :background "#c92a2a33"))))

   ;; Git gutter
   `(git-gutter:added ((,class (:foreground ,success :weight bold))))
   `(git-gutter:modified ((,class (:foreground ,warning :weight bold))))
   `(git-gutter:deleted ((,class (:foreground ,error :weight bold))))

   ;; Flycheck
   `(flycheck-error ((,class (:underline (:style wave :color ,error)))))
   `(flycheck-warning ((,class (:underline (:style wave :color ,warning)))))
   `(flycheck-info ((,class (:underline (:style wave :color ,info)))))
   `(flycheck-fringe-error ((,class (:foreground ,error))))
   `(flycheck-fringe-warning ((,class (:foreground ,warning))))
   `(flycheck-fringe-info ((,class (:foreground ,info))))

   ;; Flymake
   `(flymake-error ((,class (:underline (:style wave :color ,error)))))
   `(flymake-warning ((,class (:underline (:style wave :color ,warning)))))
   `(flymake-note ((,class (:underline (:style wave :color ,info)))))

   ;; Which-func
   `(which-func ((,class (:foreground ,function))))

   ;; Hl-line
   `(hl-line ((,class (:background ,bg-elevated))))

   ;; Whitespace mode
   `(whitespace-space ((,class (:foreground ,fg-dim))))
   `(whitespace-tab ((,class (:foreground ,fg-dim))))
   `(whitespace-newline ((,class (:foreground ,fg-dim))))
   `(whitespace-trailing ((,class (:background ,error))))
   `(whitespace-line ((,class (:background ,bg-elevated :foreground ,warning))))

   ;; Rainbow delimiters
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,bracket))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,function))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,type))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,constant))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,accent))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,string))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground ,bracket))))
   `(rainbow-delimiters-depth-8-face ((,class (:foreground ,function))))
   `(rainbow-delimiters-depth-9-face ((,class (:foreground ,type))))
   `(rainbow-delimiters-unmatched-face ((,class (:foreground ,error :weight bold))))

   ;; Compilation
   `(compilation-mode-line-exit ((,class (:foreground ,success :weight bold))))
   `(compilation-mode-line-fail ((,class (:foreground ,error :weight bold))))
   `(compilation-mode-line-run ((,class (:foreground ,accent :weight bold))))
   `(compilation-info ((,class (:foreground ,info))))
   `(compilation-warning ((,class (:foreground ,warning))))
   `(compilation-error ((,class (:foreground ,error))))

   ;; Eshell
   `(eshell-prompt ((,class (:foreground ,accent :weight bold))))
   `(eshell-ls-directory ((,class (:foreground ,type :weight bold))))
   `(eshell-ls-executable ((,class (:foreground ,success :weight bold))))
   `(eshell-ls-symlink ((,class (:foreground ,accent))))
   `(eshell-ls-missing ((,class (:foreground ,error))))
   `(eshell-ls-archive ((,class (:foreground ,function))))
   `(eshell-ls-backup ((,class (:foreground ,fg-muted))))
   `(eshell-ls-clutter ((,class (:foreground ,comment))))
   `(eshell-ls-product ((,class (:foreground ,constant))))
   `(eshell-ls-readonly ((,class (:foreground ,warning))))
   `(eshell-ls-special ((,class (:foreground ,function))))
   `(eshell-ls-unreadable ((,class (:foreground ,error))))

   ;; Term
   `(term-color-black ((,class (:foreground ,bg :background ,bg))))
   `(term-color-red ((,class (:foreground ,error :background ,error))))
   `(term-color-green ((,class (:foreground ,success :background ,success))))
   `(term-color-yellow ((,class (:foreground ,warning :background ,warning))))
   `(term-color-blue ((,class (:foreground ,type :background ,type))))
   `(term-color-magenta ((,class (:foreground ,function :background ,function))))
   `(term-color-cyan ((,class (:foreground ,constant :background ,constant))))
   `(term-color-white ((,class (:foreground ,fg :background ,fg))))

   ;; Treemacs
   `(treemacs-root-face ((,class (:foreground ,accent :weight bold :height 1.2))))
   `(treemacs-directory-face ((,class (:foreground ,type))))
   `(treemacs-file-face ((,class (:foreground ,fg))))
   `(treemacs-git-modified-face ((,class (:foreground ,warning))))
   `(treemacs-git-added-face ((,class (:foreground ,success))))
   `(treemacs-git-conflict-face ((,class (:foreground ,error))))
   `(treemacs-git-untracked-face ((,class (:foreground ,constant))))

   ;; Lsp
   `(lsp-face-highlight-textual ((,class (:background ,bg-highlight))))
   `(lsp-face-highlight-read ((,class (:background ,bg-highlight))))
   `(lsp-face-highlight-write ((,class (:background "#e85d0433"))))

   ;; Eldoc
   `(eldoc-highlight-function-argument ((,class (:foreground ,accent :weight bold))))

   ;; Web mode
   `(web-mode-html-tag-face ((,class (:foreground ,keyword))))
   `(web-mode-html-attr-name-face ((,class (:foreground ,constant))))
   `(web-mode-html-attr-value-face ((,class (:foreground ,string))))
   `(web-mode-css-selector-face ((,class (:foreground ,type))))
   `(web-mode-css-property-name-face ((,class (:foreground ,variable))))
   `(web-mode-css-function-face ((,class (:foreground ,function))))

   ;; Popup
   `(popup-face ((,class (:foreground ,fg :background ,bg-elevated))))
   `(popup-selection-face ((,class (:foreground ,bg :background ,accent))))
   `(popup-tip-face ((,class (:foreground ,fg :background ,bg-elevated))))

   ;; Tooltip
   `(tooltip ((,class (:foreground ,fg :background ,bg-elevated))))

   ;; Anzu
   `(anzu-mode-line ((,class (:foreground ,accent :weight bold))))
   `(anzu-replace-to ((,class (:foreground ,success :background "#4a8c5c33"))))

   ;; Evil
   `(evil-ex-info ((,class (:foreground ,error :slant italic))))
   `(evil-ex-substitute-matches ((,class (:foreground ,error :background "#c92a2a33" :strike-through t))))
   `(evil-ex-substitute-replacement ((,class (:foreground ,success :background "#4a8c5c33"))))

   ;; Avy
   `(avy-lead-face ((,class (:foreground ,bg :background ,accent :weight bold))))
   `(avy-lead-face-0 ((,class (:foreground ,bg :background ,constant :weight bold))))
   `(avy-lead-face-1 ((,class (:foreground ,bg :background ,type :weight bold))))
   `(avy-lead-face-2 ((,class (:foreground ,bg :background ,function :weight bold))))

   ;; Hydra
   `(hydra-face-red ((,class (:foreground ,error :weight bold))))
   `(hydra-face-blue ((,class (:foreground ,type :weight bold))))
   `(hydra-face-amaranth ((,class (:foreground ,function :weight bold))))
   `(hydra-face-pink ((,class (:foreground ,accent :weight bold))))
   `(hydra-face-teal ((,class (:foreground ,constant :weight bold))))

   ;; Vertico
   `(vertico-current ((,class (:foreground ,bg :background ,accent :weight bold))))

   ;; Orderless
   `(orderless-match-face-0 ((,class (:foreground ,accent :weight bold))))
   `(orderless-match-face-1 ((,class (:foreground ,type :weight bold))))
   `(orderless-match-face-2 ((,class (:foreground ,function :weight bold))))
   `(orderless-match-face-3 ((,class (:foreground ,constant :weight bold))))

   ;; Marginalia
   `(marginalia-key ((,class (:foreground ,accent))))
   `(marginalia-type ((,class (:foreground ,type))))
   `(marginalia-char ((,class (:foreground ,constant))))
   `(marginalia-documentation ((,class (:foreground ,fg-muted))))

   ;; Corfu
   `(corfu-current ((,class (:foreground ,bg :background ,accent :weight bold))))
   `(corfu-default ((,class (:foreground ,fg :background ,bg-elevated))))
   `(corfu-bar ((,class (:background ,accent))))
   `(corfu-border ((,class (:background ,border)))))

  (custom-theme-set-variables
   'nerv
   `(ansi-color-names-vector
     [,bg ,error ,success ,warning ,type ,function ,constant ,fg])))

(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'nerv)

;;; nerv-theme.el ends here
