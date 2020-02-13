((abbrev-complete status "installed" recipe
                  (:name abbrev-complete :auto-generated t :type emacswiki :description "Abbrev mode completion function" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/abbrev-complete.el"))
 (anything-git-files status "installed" recipe
                     (:name anything-git-files :type github :pkgname "tarao/anything-git-files-el"))
 (auto-highlight-symbol status "installed" recipe
                        (:name auto-highlight-symbol :type github :pkgname "emacsmirror/auto-highlight-symbol"))
 (auto-programming status "installed" recipe
                   (:name auto-programming :type github :pkgname "hitode909/emacs-auto-programming"))
 (direx-project status "installed" recipe
                (:name direx-project :type http :url "https://raw.github.com/m2ym/direx-el/master/direx-project.el"))
 (el-expectations status "installed" recipe
                  (:name el-expectations :description "Minimalist unit testing framework" :type emacswiki))
 (el-get status "installed" recipe
         (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
                ("el-get.*\\.el$" "methods/")
                :features el-get :post-init
                (when
                    (memq 'el-get
                          (bound-and-true-p package-activated-list))
                  (message "Deleting melpa bootstrap el-get")
                  (unless package--initialized
                    (package-initialize t))
                  (when
                      (package-installed-p 'el-get)
                    (let
                        ((feats
                          (delete-dups
                           (el-get-package-features
                            (el-get-elpa-package-directory 'el-get)))))
                      (el-get-elpa-delete-package 'el-get)
                      (dolist
                          (feat feats)
                        (unload-feature feat t))))
                  (require 'el-get))))
 (flycheck-scala-sbt status "installed" recipe
                     (:name flycheck-scala-sbt :type github :pkgname "syohex/flycheck-scala-sbt"))
 (mode-compile status "installed" recipe
               (:name mode-compile :description "Smart command for compiling files according to major-mode." :type http :url "https://raw.github.com/emacsattic/mode-compile/master/mode-compile.el" :load-path
                      (".")))
 (perl-completion status "installed" recipe
                  (:name perl-completion :auto-generated t :type emacswiki :description "- minor mode provides useful features for editing perl codes" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/perl-completion.el"))
 (sequential-command status "installed" recipe
                     (:name sequential-command :auto-generated t :type emacswiki :description "Many commands into one command" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/sequential-command.el"))
 (sequential-command-config status "installed" recipe
                            (:name sequential-command-config :auto-generated t :type emacswiki :description "Examples of sequential-command.el" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/sequential-command-config.el"))
 (smartchr status "installed" recipe
           (:name smartchr :type github :pkgname "imakado/emacs-smartchr" :features smartchr :description "Emacs version of smartchr.vim"))
 (with-eval-after-load-feature status "installed" recipe
                               (:name with-eval-after-load-feature :website "https://github.com/tarao/with-eval-after-load-feature-el" :description "Eval after loading feature with fine compilation" :type github :pkgname "tarao/with-eval-after-load-feature-el")))
