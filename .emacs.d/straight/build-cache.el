
:kak

"26.2"

#s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data ("straight" ("2019-07-22 16:24:16" ("emacs") (:type git :host github :repo "raxod502/straight.el" :files ("straight*.el") :branch "master" :package "straight" :local-repo "straight.el")) "org-elpa" ("2019-07-22 16:24:16" nil (:local-repo nil :package "org-elpa" :type git)) "melpa" ("2019-07-22 16:24:16" nil (:type git :host github :repo "melpa/melpa" :no-build t :package "melpa" :local-repo "melpa")) "gnu-elpa-mirror" ("2019-07-22 16:24:16" nil (:type git :host github :repo "emacs-straight/gnu-elpa-mirror" :no-build t :package "gnu-elpa-mirror" :local-repo "gnu-elpa-mirror")) "emacsmirror" ("2019-07-22 16:24:16" nil (:type git :host github :repo "emacsmirror/epkgs" :nonrecursive t :no-build t :package "emacsmirror" :local-repo "epkgs")) "license" ("2019-07-22 15:58:59" nil (:type git :host github :repo "emacsattic/license" :package "license" :local-repo "license")) "use-package" ("2019-07-22 16:24:16" ("emacs" "bind-key") (:type git :flavor melpa :files (:defaults (:exclude "bind-key.el" "bind-chord.el" "use-package-chords.el" "use-package-ensure-system-package.el") "use-package-pkg.el") :host github :repo "jwiegley/use-package" :package "use-package" :local-repo "use-package")) "bind-key" ("2019-07-22 16:24:16" nil (:flavor melpa :files ("bind-key.el" "bind-key-pkg.el") :package "bind-key" :local-repo "use-package" :type git :repo "jwiegley/use-package" :host github)) "smex" ("2019-07-22 16:24:16" ("emacs") (:type git :flavor melpa :host github :repo "nonsequitur/smex" :package "smex" :local-repo "smex")) "pdf-tools" ("2019-07-22 16:24:16" ("emacs" "tablist" "let-alist") (:type git :flavor melpa :files ("lisp/*.el" "README" ("build" "Makefile") ("build" "server") (:exclude "lisp/tablist.el" "lisp/tablist-filter.el") "pdf-tools-pkg.el") :host github :repo "politza/pdf-tools" :package "pdf-tools" :local-repo "pdf-tools")) "tablist" ("2019-07-22 16:24:16" ("emacs") (:type git :flavor melpa :host github :repo "politza/tablist" :package "tablist" :local-repo "tablist")) "let-alist" ("2019-07-22 16:24:16" ("emacs") (:type git :host github :repo "emacs-straight/let-alist" :package "let-alist" :local-repo "let-alist")) "auctex" ("2019-07-22 16:24:17" ("emacs" "cl-lib") (:type git :host github :repo "emacs-straight/auctex" :package "auctex" :local-repo "auctex")) "cl-lib" ("2019-07-22 16:24:17" nil (:type git :host github :repo "emacs-straight/cl-lib" :package "cl-lib" :local-repo "cl-lib")) "transpose-frame" ("2019-07-22 16:24:17" nil (:type git :flavor melpa :host github :repo "emacsorphanage/transpose-frame" :package "transpose-frame" :local-repo "transpose-frame")) "smooth-scrolling" ("2019-07-22 16:24:17" nil (:type git :flavor melpa :host github :repo "aspiers/smooth-scrolling" :package "smooth-scrolling" :local-repo "smooth-scrolling")) "frames-only-mode" ("2019-07-22 16:24:17" ("emacs" "dash" "s") (:type git :flavor melpa :host github :repo "davidshepherd7/frames-only-mode" :package "frames-only-mode" :local-repo "frames-only-mode")) "dash" ("2019-07-22 16:24:17" nil (:type git :flavor melpa :files ("dash.el" "dash-pkg.el") :host github :repo "magnars/dash.el" :package "dash" :local-repo "dash.el")) "s" ("2019-07-22 16:24:17" nil (:type git :flavor melpa :files ("s.el" "s-pkg.el") :host github :repo "magnars/s.el" :package "s" :local-repo "s.el")) "nix-mode" ("2019-07-22 16:24:17" ("emacs") (:type git :flavor melpa :files (:defaults (:exclude "nix-company.el" "nix-mode-mmm.el") "nix-mode-pkg.el") :host github :repo "NixOS/nix-mode" :package "nix-mode" :local-repo "nix-mode")) "haskell-mode" ("2019-07-22 16:24:17" ("emacs") (:type git :flavor melpa :files (:defaults "NEWS" "logo.svg" "haskell-mode-pkg.el") :host github :repo "haskell/haskell-mode" :package "haskell-mode" :local-repo "haskell-mode")) "sudo-edit" ("2019-07-22 16:24:17" ("emacs" "cl-lib") (:type git :flavor melpa :host github :repo "nflath/sudo-edit" :package "sudo-edit" :local-repo "sudo-edit")) "base16-theme" ("2019-07-22 16:24:17" nil (:type git :flavor melpa :files (:defaults "build/*.el" "base16-theme-pkg.el") :host github :repo "belak/base16-emacs" :package "base16-theme" :local-repo "base16-emacs")) "better-defaults" ("2019-07-22 16:24:16" nil (:type git :flavor melpa :host github :repo "technomancy/better-defaults" :package "better-defaults" :local-repo "better-defaults"))))

#s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data ("straight" ((straight-autoloads straight-x straight) (autoload (quote straight-get-recipe) "straight" "Interactively select a recipe from one of the recipe repositories.
All recipe repositories in `straight-recipe-repositories' will
first be cloned. After the recipe is selected, it will be copied
to the kill ring. With a prefix argument, first prompt for a
recipe repository to search. Only that repository will be
cloned.

From Lisp code, SOURCES should be a subset of the symbols in
`straight-recipe-repositories'. Only those recipe repositories
are cloned and searched. If it is nil or omitted, then the value
of `straight-recipe-repositories' is used. If SOURCES is the
symbol `interactive', then the user is prompted to select a
recipe repository, and a list containing that recipe repository
is used for the value of SOURCES. ACTION may be `copy' (copy
recipe to the kill ring), `insert' (insert at point), or nil (no
action, just return it).

(fn &optional SOURCES ACTION)" t nil) (autoload (quote straight-use-package) "straight" "Register, clone, build, and activate a package and its dependencies.
This is the main entry point to the functionality of straight.el.

MELPA-STYLE-RECIPE is either a symbol naming a package, or a list
whose car is a symbol naming a package and whose cdr is a
property list containing e.g. `:type', `:local-repo', `:files',
and VC backend specific keywords.

First, the package recipe is registered with straight.el. If
NO-CLONE is a function, then it is called with two arguments: the
package name as a string, and a boolean value indicating whether
the local repository for the package is available. In that case,
the return value of the function is used as the value of NO-CLONE
instead. In any case, if NO-CLONE is non-nil, then processing
stops here.

Otherwise, the repository is cloned, if it is missing. If
NO-BUILD is a function, then it is called with one argument: the
package name as a string. In that case, the return value of the
function is used as the value of NO-BUILD instead. In any case,
if NO-BUILD is non-nil, then processing halts here. Otherwise,
the package is built and activated. Note that if the package
recipe has a non-nil `:no-build' entry, then NO-BUILD is ignored
and processing always stops before building and activation
occurs.

CAUSE is a string explaining the reason why
`straight-use-package' has been called. It is for internal use
only, and is used to construct progress messages. INTERACTIVE is
non-nil if the function has been called interactively. It is for
internal use only, and is used to determine whether to show a
hint about how to install the package permanently.

Return non-nil if package was actually installed, and nil
otherwise (this can only happen if NO-CLONE is non-nil).

(fn MELPA-STYLE-RECIPE &optional NO-CLONE NO-BUILD CAUSE INTERACTIVE)" t nil) (autoload (quote straight-register-package) "straight" "Register a package without cloning, building, or activating it.
This function is equivalent to calling `straight-use-package'
with a non-nil argument for NO-CLONE. It is provided for
convenience. MELPA-STYLE-RECIPE is as for
`straight-use-package'.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload (quote straight-use-package-no-build) "straight" "Register and clone a package without building it.
This function is equivalent to calling `straight-use-package'
with nil for NO-CLONE but a non-nil argument for NO-BUILD. It is
provided for convenience. MELPA-STYLE-RECIPE is as for
`straight-use-package'.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload (quote straight-use-package-lazy) "straight" "Register, build, and activate a package if it is already cloned.
This function is equivalent to calling `straight-use-package'
with symbol `lazy' for NO-CLONE. It is provided for convenience.
MELPA-STYLE-RECIPE is as for `straight-use-package'.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload (quote straight-use-recipes) "straight" "Register a recipe repository using MELPA-STYLE-RECIPE.
This registers the recipe and builds it if it is already cloned.
Note that you probably want the recipe for a recipe repository to
include a non-nil `:no-build' property, to unconditionally
inhibit the build phase.

This function also adds the recipe repository to
`straight-recipe-repositories', at the end of the list.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload (quote straight-override-recipe) "straight" "Register MELPA-STYLE-RECIPE as a recipe override.
This puts it in `straight-recipe-overrides', depending on the
value of `straight-current-profile'.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload (quote straight-check-package) "straight" "Rebuild a PACKAGE if it has been modified.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. See also `straight-rebuild-package' and
`straight-check-all'.

(fn PACKAGE)" t nil) (autoload (quote straight-check-all) "straight" "Rebuild any packages that have been modified.
See also `straight-rebuild-all' and `straight-check-package'.
This function should not be called during init.

(fn)" t nil) (autoload (quote straight-rebuild-package) "straight" "Rebuild a PACKAGE.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument RECURSIVE, rebuild
all dependencies as well. See also `straight-check-package' and
`straight-rebuild-all'.

(fn PACKAGE &optional RECURSIVE)" t nil) (autoload (quote straight-rebuild-all) "straight" "Rebuild all packages.
See also `straight-check-all' and `straight-rebuild-package'.

(fn)" t nil) (autoload (quote straight-prune-build-cache) "straight" "Prune the build cache.
This means that only packages that were built in the last init
run and subsequent interactive session will remain; other
packages will have their build mtime information and any cached
autoloads discarded.

(fn)" nil nil) (autoload (quote straight-prune-build-directory) "straight" "Prune the build directory.
This means that only packages that were built in the last init
run and subsequent interactive session will remain; other
packages will have their build directories deleted.

(fn)" nil nil) (autoload (quote straight-prune-build) "straight" "Prune the build cache and build directory.
This means that only packages that were built in the last init
run and subsequent interactive session will remain; other
packages will have their build mtime information discarded and
their build directories deleted.

(fn)" t nil) (autoload (quote straight-normalize-package) "straight" "Normalize a PACKAGE's local repository to its recipe's configuration.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'.

(fn PACKAGE)" t nil) (autoload (quote straight-normalize-all) "straight" "Normalize all packages. See `straight-normalize-package'.
Return a list of recipes for packages that were not successfully
normalized. If multiple packages come from the same local
repository, only one is normalized.

PREDICATE, if provided, filters the packages that are normalized.
It is called with the package name as a string, and should return
non-nil if the package should actually be normalized.

(fn &optional PREDICATE)" t nil) (autoload (quote straight-fetch-package) "straight" "Try to fetch a PACKAGE from the primary remote.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
fetch not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload (quote straight-fetch-package-and-deps) "straight" "Try to fetch a PACKAGE and its (transitive) dependencies.
PACKAGE, its dependencies, their dependencies, etc. are fetched
from their primary remotes.

PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
fetch not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload (quote straight-fetch-all) "straight" "Try to fetch all packages from their primary remotes.
With prefix argument FROM-UPSTREAM, fetch not just from primary
remotes but also from upstreams (for forked packages).

Return a list of recipes for packages that were not successfully
fetched. If multiple packages come from the same local
repository, only one is fetched.

PREDICATE, if provided, filters the packages that are fetched. It
is called with the package name as a string, and should return
non-nil if the package should actually be fetched.

(fn &optional FROM-UPSTREAM PREDICATE)" t nil) (autoload (quote straight-merge-package) "straight" "Try to merge a PACKAGE from the primary remote.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
merge not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload (quote straight-merge-package-and-deps) "straight" "Try to merge a PACKAGE and its (transitive) dependencies.
PACKAGE, its dependencies, their dependencies, etc. are merged
from their primary remotes.

PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
merge not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload (quote straight-merge-all) "straight" "Try to merge all packages from their primary remotes.
With prefix argument FROM-UPSTREAM, merge not just from primary
remotes but also from upstreams (for forked packages).

Return a list of recipes for packages that were not successfully
merged. If multiple packages come from the same local
repository, only one is merged.

PREDICATE, if provided, filters the packages that are merged. It
is called with the package name as a string, and should return
non-nil if the package should actually be merged.

(fn &optional FROM-UPSTREAM PREDICATE)" t nil) (autoload (quote straight-pull-package) "straight" "Try to pull a PACKAGE from the primary remote.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM, pull
not just from primary remote but also from upstream (for forked
packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload (quote straight-pull-package-and-deps) "straight" "Try to pull a PACKAGE and its (transitive) dependencies.
PACKAGE, its dependencies, their dependencies, etc. are pulled
from their primary remotes.

PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
pull not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload (quote straight-pull-all) "straight" "Try to pull all packages from their primary remotes.
With prefix argument FROM-UPSTREAM, pull not just from primary
remotes but also from upstreams (for forked packages).

Return a list of recipes for packages that were not successfully
pulled. If multiple packages come from the same local repository,
only one is pulled.

PREDICATE, if provided, filters the packages that are pulled. It
is called with the package name as a string, and should return
non-nil if the package should actually be pulled.

(fn &optional FROM-UPSTREAM PREDICATE)" t nil) (autoload (quote straight-push-package) "straight" "Push a PACKAGE to its primary remote, if necessary.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'.

(fn PACKAGE)" t nil) (autoload (quote straight-push-all) "straight" "Try to push all packages to their primary remotes.

Return a list of recipes for packages that were not successfully
pushed. If multiple packages come from the same local repository,
only one is pushed.

PREDICATE, if provided, filters the packages that are normalized.
It is called with the package name as a string, and should return
non-nil if the package should actually be normalized.

(fn &optional PREDICATE)" t nil) (autoload (quote straight-freeze-versions) "straight" "Write version lockfiles for currently activated packages.
This implies first pushing all packages that have unpushed local
changes. If the package management system has been used since the
last time the init-file was reloaded, offer to fix the situation
by reloading the init-file again. If FORCE is
non-nil (interactively, if a prefix argument is provided), skip
all checks and write the lockfile anyway.

Currently, writing version lockfiles requires cloning all lazily
installed packages. Hopefully, this inconvenient requirement will
be removed in the future.

Multiple lockfiles may be written (one for each profile),
according to the value of `straight-profiles'.

(fn &optional FORCE)" t nil) (autoload (quote straight-thaw-versions) "straight" "Read version lockfiles and restore package versions to those listed.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "straight" (quote ("straight-")))) (defvar straight-x-pinned-packages nil "List of pinned packages.") (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "straight-x" (quote ("straight-x-")))) (provide (quote straight-autoloads))) "license" ((license-autoloads license) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "license" (quote ("license")))) (provide (quote license-autoloads))) "bind-key" ((bind-key-autoloads bind-key) (autoload (quote bind-key) "bind-key" "Bind KEY-NAME to COMMAND in KEYMAP (`global-map' if not passed).

KEY-NAME may be a vector, in which case it is passed straight to
`define-key'. Or it may be a string to be interpreted as
spelled-out keystrokes, e.g., \"C-c C-z\". See documentation of
`edmacro-mode' for details.

COMMAND must be an interactive function or lambda form.

KEYMAP, if present, should be a keymap and not a quoted symbol.
For example:

  (bind-key \"M-h\" #'some-interactive-function my-mode-map)

If PREDICATE is non-nil, it is a form evaluated to determine when
a key should be bound. It must return non-nil in such cases.
Emacs can evaluate this form at any time that it does redisplay
or operates on menu data structures, so you should write it so it
can safely be called at any time.

(fn KEY-NAME COMMAND &optional KEYMAP PREDICATE)" nil t) (autoload (quote unbind-key) "bind-key" "Unbind the given KEY-NAME, within the KEYMAP (if specified).
See `bind-key' for more details.

(fn KEY-NAME &optional KEYMAP)" nil t) (autoload (quote bind-key*) "bind-key" "Similar to `bind-key', but overrides any mode-specific bindings.

(fn KEY-NAME COMMAND &optional PREDICATE)" nil t) (autoload (quote bind-keys) "bind-key" "Bind multiple keys at once.

Accepts keyword arguments:
:map MAP               - a keymap into which the keybindings should be
                         added
:prefix KEY            - prefix key for these bindings
:prefix-map MAP        - name of the prefix map that should be created
                         for these bindings
:prefix-docstring STR  - docstring for the prefix-map variable
:menu-name NAME        - optional menu string for prefix map
:filter FORM           - optional form to determine when bindings apply

The rest of the arguments are conses of keybinding string and a
function symbol (unquoted).

(fn &rest ARGS)" nil t) (autoload (quote bind-keys*) "bind-key" "

(fn &rest ARGS)" nil t) (autoload (quote describe-personal-keybindings) "bind-key" "Display all the personal keybindings defined by `bind-key'.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "bind-key" (quote ("compare-keybindings" "get-binding-description" "bind-key" "personal-keybindings" "override-global-m")))) (provide (quote bind-key-autoloads))) "use-package" ((use-package-delight use-package-core use-package-diminish use-package-jump use-package-lint use-package-ensure use-package-bind-key use-package-autoloads use-package) (autoload (quote use-package-autoload-keymap) "use-package-bind-key" "Loads PACKAGE and then binds the key sequence used to invoke
this function to KEYMAP-SYMBOL. It then simulates pressing the
same key sequence a again, so that the next key pressed is routed
to the newly loaded keymap.

This function supports use-package's :bind-keymap keyword. It
works by binding the given key sequence to an invocation of this
function for a particular keymap. The keymap is expected to be
defined by the package. In this way, loading the package is
deferred until the prefix key sequence is pressed.

(fn KEYMAP-SYMBOL PACKAGE OVERRIDE)" nil nil) (autoload (quote use-package-normalize-binder) "use-package-bind-key" "

(fn NAME KEYWORD ARGS)" nil nil) (defalias (quote use-package-normalize/:bind) (quote use-package-normalize-binder)) (defalias (quote use-package-normalize/:bind*) (quote use-package-normalize-binder)) (defalias (quote use-package-autoloads/:bind) (quote use-package-autoloads-mode)) (defalias (quote use-package-autoloads/:bind*) (quote use-package-autoloads-mode)) (autoload (quote use-package-handler/:bind) "use-package-bind-key" "

(fn NAME KEYWORD ARGS REST STATE &optional BIND-MACRO)" nil nil) (defalias (quote use-package-normalize/:bind-keymap) (quote use-package-normalize-binder)) (defalias (quote use-package-normalize/:bind-keymap*) (quote use-package-normalize-binder)) (autoload (quote use-package-handler/:bind-keymap) "use-package-bind-key" "

(fn NAME KEYWORD ARGS REST STATE &optional OVERRIDE)" nil nil) (autoload (quote use-package-handler/:bind-keymap*) "use-package-bind-key" "

(fn NAME KEYWORD ARG REST STATE)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "use-package-bind-key" (quote ("use-package-handler/:bind*")))) (autoload (quote use-package) "use-package-core" "Declare an Emacs package by specifying a group of configuration options.

For full documentation, please see the README file that came with
this file.  Usage:

  (use-package package-name
     [:keyword [option]]...)

:init            Code to run before PACKAGE-NAME has been loaded.
:config          Code to run after PACKAGE-NAME has been loaded.  Note that
                 if loading is deferred for any reason, this code does not
                 execute until the lazy load has occurred.
:preface         Code to be run before everything except `:disabled'; this
                 can be used to define functions for use in `:if', or that
                 should be seen by the byte-compiler.

:mode            Form to be added to `auto-mode-alist'.
:magic           Form to be added to `magic-mode-alist'.
:magic-fallback  Form to be added to `magic-fallback-mode-alist'.
:interpreter     Form to be added to `interpreter-mode-alist'.

:commands        Define autoloads for commands that will be defined by the
                 package.  This is useful if the package is being lazily
                 loaded, and you wish to conditionally call functions in your
                 `:init' block that are defined in the package.
:hook            Specify hook(s) to attach this package to.

:bind            Bind keys, and define autoloads for the bound commands.
:bind*           Bind keys, and define autoloads for the bound commands,
                 *overriding all minor mode bindings*.
:bind-keymap     Bind a key prefix to an auto-loaded keymap defined in the
                 package.  This is like `:bind', but for keymaps.
:bind-keymap*    Like `:bind-keymap', but overrides all minor mode bindings

:defer           Defer loading of a package -- this is implied when using
                 `:commands', `:bind', `:bind*', `:mode', `:magic', `:hook',
                 `:magic-fallback', or `:interpreter'.  This can be an integer,
                 to force loading after N seconds of idle time, if the package
                 has not already been loaded.
:after           Defer loading of a package until after any of the named
                 features are loaded.
:demand          Prevent deferred loading in all cases.

:if EXPR         Initialize and load only if EXPR evaluates to a non-nil value.
:disabled        The package is ignored completely if this keyword is present.
:defines         Declare certain variables to silence the byte-compiler.
:functions       Declare certain functions to silence the byte-compiler.
:load-path       Add to the `load-path' before attempting to load the package.
:diminish        Support for diminish.el (if installed).
:delight         Support for delight.el (if installed).
:custom          Call `customize-set-variable' with each variable definition.
:custom-face     Call `customize-set-faces' with each face definition.
:ensure          Loads the package using package.el if necessary.
:pin             Pin the package to an archive.

(fn NAME &rest ARGS)" nil t) (function-put (quote use-package) (quote lisp-indent-function) (quote 1)) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "use-package-core" (quote ("use-package-")))) (autoload (quote use-package-normalize/:delight) "use-package-delight" "Normalize arguments to delight.

(fn NAME KEYWORD ARGS)" nil nil) (autoload (quote use-package-handler/:delight) "use-package-delight" "

(fn NAME KEYWORD ARGS REST STATE)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "use-package-delight" (quote ("use-package-normalize-delight")))) (autoload (quote use-package-normalize/:diminish) "use-package-diminish" "

(fn NAME KEYWORD ARGS)" nil nil) (autoload (quote use-package-handler/:diminish) "use-package-diminish" "

(fn NAME KEYWORD ARG REST STATE)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "use-package-diminish" (quote ("use-package-normalize-diminish")))) (autoload (quote use-package-normalize/:ensure) "use-package-ensure" "

(fn NAME KEYWORD ARGS)" nil nil) (autoload (quote use-package-handler/:ensure) "use-package-ensure" "

(fn NAME KEYWORD ENSURE REST STATE)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "use-package-ensure" (quote ("use-package-")))) (autoload (quote use-package-jump-to-package-form) "use-package-jump" "Attempt to find and jump to the `use-package' form that loaded
PACKAGE. This will only find the form if that form actually
required PACKAGE. If PACKAGE was previously required then this
function will jump to the file that originally required PACKAGE
instead.

(fn PACKAGE)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "use-package-jump" (quote ("use-package-find-require")))) (autoload (quote use-package-lint) "use-package-lint" "Check for errors in use-package declarations.
For example, if the module's `:if' condition is met, but even
with the specified `:load-path' the module cannot be found.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "use-package-lint" (quote ("use-package-lint-declaration")))) (provide (quote use-package-autoloads))) "smex" ((smex smex-autoloads) (autoload (quote smex) "smex" "

(fn)" t nil) (autoload (quote smex-major-mode-commands) "smex" "Like `smex', but limited to commands that are relevant to the active major mode.

(fn)" t nil) (autoload (quote smex-initialize) "smex" "

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "smex" (quote ("smex-")))) (provide (quote smex-autoloads))) "tablist" ((tablist-autoloads tablist-filter tablist) (autoload (quote tablist-minor-mode) "tablist" "Toggle Tablist minor mode on or off.
With a prefix argument ARG, enable Tablist minor mode if ARG is
positive, and disable it otherwise.  If called from Lisp, enable
the mode if ARG is omitted or nil, and toggle it if ARG is `toggle'.
\\{tablist-minor-mode-map}

(fn &optional ARG)" t nil) (autoload (quote tablist-mode) "tablist" "

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "tablist" (quote ("tablist-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "tablist-filter" (quote ("tablist-filter-")))) (provide (quote tablist-autoloads))) "let-alist" ((let-alist-autoloads let-alist) (autoload (quote let-alist) "let-alist" "Let-bind dotted symbols to their cdrs in ALIST and execute BODY.
Dotted symbol is any symbol starting with a `.'.  Only those present
in BODY are let-bound and this search is done at compile time.

For instance, the following code

  (let-alist alist
    (if (and .title .body)
        .body
      .site
      .site.contents))

essentially expands to

  (let ((.title (cdr (assq \\='title alist)))
        (.body  (cdr (assq \\='body alist)))
        (.site  (cdr (assq \\='site alist)))
        (.site.contents (cdr (assq \\='contents (cdr (assq \\='site alist))))))
    (if (and .title .body)
        .body
      .site
      .site.contents))

If you nest `let-alist' invocations, the inner one can't access
the variables of the outer one. You can, however, access alists
inside the original alist by using dots inside the symbol, as
displayed in the example above.

(fn ALIST &rest BODY)" nil t) (function-put (quote let-alist) (quote lisp-indent-function) (quote 1)) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "let-alist" (quote ("let-alist--")))) (provide (quote let-alist-autoloads))) "pdf-tools" ((pdf-history pdf-isearch pdf-loader pdf-tools pdf-links pdf-util pdf-occur pdf-virtual pdf-cache pdf-annot pdf-info pdf-view pdf-misc pdf-dev pdf-tools-autoloads pdf-sync pdf-outline) (autoload (quote pdf-annot-minor-mode) "pdf-annot" "Support for PDF Annotations.

\\{pdf-annot-minor-mode-map}

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "pdf-annot" (quote ("pdf-annot-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "pdf-cache" (quote ("page" "pdf-cache-" "textregions" "boundingbox" "define-pdf-cache-function")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "pdf-dev" (quote ("pdf-dev-")))) (autoload (quote pdf-history-minor-mode) "pdf-history" "Keep a history of previously visited pages.

This is a simple stack-based history.  Turning the page or
following a link pushes the left-behind page on the stack, which
may be navigated with the following keys.

\\{pdf-history-minor-mode-map}

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "pdf-history" (quote ("pdf-history-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "pdf-info" (quote ("pdf-info-")))) (autoload (quote pdf-isearch-minor-mode) "pdf-isearch" "Isearch mode for PDF buffer.

When this mode is enabled \\[isearch-forward], among other keys,
starts an incremental search in this PDF document.  Since this mode
uses external programs to highlight found matches via
image-processing, proceeding to the next match may be slow.

Therefore two isearch behaviours have been defined: Normal isearch and
batch mode.  The later one is a minor mode
(`pdf-isearch-batch-mode'), which when activated inhibits isearch
from stopping at and highlighting every single match, but rather
display them batch-wise.  Here a batch means a number of matches
currently visible in the selected window.

The kind of highlighting is determined by three faces
`pdf-isearch-match' (for the current match), `pdf-isearch-lazy'
(for all other matches) and `pdf-isearch-batch' (when in batch
mode), which see.

Colors may also be influenced by the minor-mode
`pdf-view-dark-minor-mode'.  If this is minor mode enabled, each face's
dark colors, are used (see e.g. `frame-background-mode'), instead
of the light ones.

\\{pdf-isearch-minor-mode-map}
While in `isearch-mode' the following keys are available. Note
that not every isearch command work as expected.

\\{pdf-isearch-active-mode-map}

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "pdf-isearch" (quote ("pdf-isearch-")))) (autoload (quote pdf-links-minor-mode) "pdf-links" "Handle links in PDF documents.\\<pdf-links-minor-mode-map>

If this mode is enabled, most links in the document may be
activated by clicking on them or by pressing \\[pdf-links-action-perform] and selecting
one of the displayed keys, or by using isearch limited to
links via \\[pdf-links-isearch-link].

\\{pdf-links-minor-mode-map}

(fn &optional ARG)" t nil) (autoload (quote pdf-links-action-perform) "pdf-links" "Follow LINK, depending on its type.

This may turn to another page, switch to another PDF buffer or
invoke `pdf-links-browse-uri-function'.

Interactively, link is read via `pdf-links-read-link-action'.
This function displays characters around the links in the current
page and starts reading characters (ignoring case).  After a
sufficient number of characters have been read, the corresponding
link's link is invoked.  Additionally, SPC may be used to
scroll the current page.

(fn LINK)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "pdf-links" (quote ("pdf-links-")))) (autoload (quote pdf-loader-install) "pdf-loader" "Prepare Emacs for using PDF Tools.

This function acts as a replacement for `pdf-tools-install' and
makes Emacs load and use PDF Tools as soon as a PDF file is
opened, but not sooner.

The arguments are passed verbatim to `pdf-tools-install', which
see.

(fn &optional NO-QUERY-P SKIP-DEPENDENCIES-P NO-ERROR-P FORCE-DEPENDENCIES-P)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "pdf-loader" (quote ("pdf-loader--")))) (autoload (quote pdf-misc-minor-mode) "pdf-misc" "FIXME:  Not documented.

(fn &optional ARG)" t nil) (autoload (quote pdf-misc-size-indication-minor-mode) "pdf-misc" "Provide a working size indication in the mode-line.

(fn &optional ARG)" t nil) (autoload (quote pdf-misc-menu-bar-minor-mode) "pdf-misc" "Display a PDF Tools menu in the menu-bar.

(fn &optional ARG)" t nil) (autoload (quote pdf-misc-context-menu-minor-mode) "pdf-misc" "Provide a right-click context menu in PDF buffers.

\\{pdf-misc-context-menu-minor-mode-map}

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "pdf-misc" (quote ("pdf-misc-")))) (autoload (quote pdf-occur) "pdf-occur" "List lines matching STRING or PCRE.

Interactively search for a regexp. Unless a prefix arg was given,
in which case this functions performs a string search.

If `pdf-occur-prefer-string-search' is non-nil, the meaning of
the prefix-arg is inverted.

(fn STRING &optional REGEXP-P)" t nil) (autoload (quote pdf-occur-multi-command) "pdf-occur" "Perform `pdf-occur' on multiple buffer.

For a programmatic search of multiple documents see
`pdf-occur-search'.

(fn)" t nil) (defvar pdf-occur-global-minor-mode nil "Non-nil if Pdf-Occur-Global minor mode is enabled.
See the `pdf-occur-global-minor-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `pdf-occur-global-minor-mode'.") (custom-autoload (quote pdf-occur-global-minor-mode) "pdf-occur" nil) (autoload (quote pdf-occur-global-minor-mode) "pdf-occur" "Enable integration of Pdf Occur with other modes.

This global minor mode enables (or disables)
`pdf-occur-ibuffer-minor-mode' and `pdf-occur-dired-minor-mode'
in all current and future ibuffer/dired buffer.

(fn &optional ARG)" t nil) (autoload (quote pdf-occur-ibuffer-minor-mode) "pdf-occur" "Hack into ibuffer's do-occur binding.

This mode remaps `ibuffer-do-occur' to
`pdf-occur-ibuffer-do-occur', which will start the PDF Tools
version of `occur', if all marked buffer's are in `pdf-view-mode'
and otherwise fallback to `ibuffer-do-occur'.

(fn &optional ARG)" t nil) (autoload (quote pdf-occur-dired-minor-mode) "pdf-occur" "Hack into dired's `dired-do-search' binding.

This mode remaps `dired-do-search' to
`pdf-occur-dired-do-search', which will start the PDF Tools
version of `occur', if all marked buffer's are in `pdf-view-mode'
and otherwise fallback to `dired-do-search'.

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "pdf-occur" (quote ("pdf-occur-")))) (autoload (quote pdf-outline-minor-mode) "pdf-outline" "Display an outline of a PDF document.

This provides a PDF's outline on the menu bar via imenu.
Additionally the same outline may be viewed in a designated
buffer.

\\{pdf-outline-minor-mode-map}

(fn &optional ARG)" t nil) (autoload (quote pdf-outline) "pdf-outline" "Display an PDF outline of BUFFER.

BUFFER defaults to the current buffer.  Select the outline
buffer, unless NO-SELECT-WINDOW-P is non-nil.

(fn &optional BUFFER NO-SELECT-WINDOW-P)" t nil) (autoload (quote pdf-outline-imenu-enable) "pdf-outline" "Enable imenu in the current PDF buffer.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "pdf-outline" (quote ("pdf-outline")))) (autoload (quote pdf-sync-minor-mode) "pdf-sync" "Correlate a PDF position with the TeX file.
\\<pdf-sync-minor-mode-map>
This works via SyncTeX, which means the TeX sources need to have
been compiled with `--synctex=1'.  In AUCTeX this can be done by
setting `TeX-source-correlate-method' to 'synctex (before AUCTeX
is loaded) and enabling `TeX-source-correlate-mode'.

Then \\[pdf-sync-backward-search-mouse] in the PDF buffer will open the
corresponding TeX location.

If AUCTeX is your preferred tex-mode, this library arranges to
bind `pdf-sync-forward-display-pdf-key' (the default is `C-c C-g')
to `pdf-sync-forward-search' in `TeX-source-correlate-map'.  This
function displays the PDF page corresponding to the current
position in the TeX buffer.  This function only works together
with AUCTeX.

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "pdf-sync" (quote ("pdf-sync-")))) (defvar pdf-tools-handle-upgrades t "Whether PDF Tools should handle upgrading itself.") (custom-autoload (quote pdf-tools-handle-upgrades) "pdf-tools" t) (autoload (quote pdf-tools-install) "pdf-tools" "Install PDF-Tools in all current and future PDF buffers.

If the `pdf-info-epdfinfo-program' is not running or does not
appear to be working, attempt to rebuild it.  If this build
succeeded, continue with the activation of the package.
Otherwise fail silently, i.e. no error is signaled.

Build the program (if necessary) without asking first, if
NO-QUERY-P is non-nil.

Don't attempt to install system packages, if SKIP-DEPENDENCIES-P
is non-nil.

Do not signal an error in case the build failed, if NO-ERROR-P is
non-nil.

Attempt to install system packages (even if it is deemed
unnecessary), if FORCE-DEPENDENCIES-P is non-nil.

Note that SKIP-DEPENDENCIES-P and FORCE-DEPENDENCIES-P are
mutually exclusive.

Note further, that you can influence the installation directory
by setting `pdf-info-epdfinfo-program' to an appropriate
value (e.g. ~/bin/epdfinfo) before calling this function.

See `pdf-view-mode' and `pdf-tools-enabled-modes'.

(fn &optional NO-QUERY-P SKIP-DEPENDENCIES-P NO-ERROR-P FORCE-DEPENDENCIES-P)" t nil) (autoload (quote pdf-tools-enable-minor-modes) "pdf-tools" "Enable MODES in the current buffer.

MODES defaults to `pdf-tools-enabled-modes'.

(fn &optional MODES)" t nil) (autoload (quote pdf-tools-help) "pdf-tools" "

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "pdf-tools" (quote ("pdf-tools-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "pdf-util" (quote ("pdf-util-" "display-buffer-split-below-and-attach")))) (autoload (quote pdf-view-bookmark-jump-handler) "pdf-view" "The bookmark handler-function interface for bookmark BMK.

See also `pdf-view-bookmark-make-record'.

(fn BMK)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "pdf-view" (quote ("pdf-view-")))) (autoload (quote pdf-virtual-edit-mode) "pdf-virtual" "Major mode when editing a virtual PDF buffer.

(fn)" t nil) (autoload (quote pdf-virtual-view-mode) "pdf-virtual" "Major mode in virtual PDF buffers.

(fn)" t nil) (defvar pdf-virtual-global-minor-mode nil "Non-nil if Pdf-Virtual-Global minor mode is enabled.
See the `pdf-virtual-global-minor-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `pdf-virtual-global-minor-mode'.") (custom-autoload (quote pdf-virtual-global-minor-mode) "pdf-virtual" nil) (autoload (quote pdf-virtual-global-minor-mode) "pdf-virtual" "Enable recognition and handling of VPDF files.

(fn &optional ARG)" t nil) (autoload (quote pdf-virtual-buffer-create) "pdf-virtual" "

(fn &optional FILENAMES BUFFER-NAME DISPLAY-P)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "pdf-virtual" (quote ("pdf-virtual-")))) (provide (quote pdf-tools-autoloads))) "cl-lib" ((cl-lib-autoloads cl-lib) (let ((d (file-name-directory "/home/ross/.emacs.d/straight/build/cl-lib/cl-lib-autoloads.el"))) (when (member d load-path) (setq load-path (append (remove d load-path) (list d))))) (provide (quote cl-lib-autoloads))) "auctex" ((context-nl lpath latex multi-prompt toolbar-x bib-cite auctex-autoloads tex-fold tex-jp font-latex tex-ispell tex-style prv-emacs latex-flymake tex-wizard texmathp tex-font context tex-site auctex tex-mik tex-bar preview tex-info tex context-en plain-tex tex-buf) (autoload (quote bib-cite-minor-mode) "bib-cite" "Toggle bib-cite mode.
When bib-cite mode is enabled, citations, labels and refs are highlighted
when the mouse is over them.  Clicking on these highlights with [mouse-2]
runs bib-find, and [mouse-3] runs bib-display.

(fn ARG)" t nil) (autoload (quote turn-on-bib-cite) "bib-cite" "Unconditionally turn on Bib Cite mode.

(fn)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "bib-cite" (quote ("psg-" "bib-" "search-directory-tree" "member-cis" "create-alist-from-list" "LaTeX-")))) (defalias (quote ConTeXt-mode) (quote context-mode)) (autoload (quote context-mode) "context" "Major mode in AUCTeX for editing ConTeXt files.

Special commands:
\\{ConTeXt-mode-map}

Entering `context-mode' calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of ConTeXt-mode-hook.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "context" (quote ("context-guess-current-interface" "ConTeXt-" "TeX-ConTeXt-sentinel")))) (autoload (quote context-en-mode) "context-en" "Major mode for editing files for ConTeXt using its english interface.

Special commands:
\\{ConTeXt-mode-map}

Entering `context-mode' calls the value of `text-mode-hook',
then the value of TeX-mode-hook, and then the value
of context-mode-hook.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "context-en" (quote ("ConTeXt-")))) (autoload (quote context-nl-mode) "context-nl" "Major mode for editing files for ConTeXt using its dutch interface.

Special commands:
\\{ConTeXt-mode-map}

Entering `context-mode' calls the value of `text-mode-hook',
then the value of TeX-mode-hook, and then the value
of context-mode-hook.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "context-nl" (quote ("ConTeXt-")))) (autoload (quote font-latex-setup) "font-latex" "Setup this buffer for LaTeX font-lock.  Usually called from a hook.

(fn)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "font-latex" (quote ("font-l")))) (autoload (quote BibTeX-auto-store) "latex" "This function should be called from `bibtex-mode-hook'.
It will setup BibTeX to store keys in an auto file.

(fn)" nil nil) (add-to-list (quote auto-mode-alist) (quote ("\\.drv\\'" . latex-mode))) (add-to-list (quote auto-mode-alist) (quote ("\\.hva\\'" . latex-mode))) (autoload (quote TeX-latex-mode) "latex" "Major mode in AUCTeX for editing LaTeX files.
See info under AUCTeX for full documentation.

Special commands:
\\{LaTeX-mode-map}

Entering LaTeX mode calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of `LaTeX-mode-hook'.

(fn)" t nil) (add-to-list (quote auto-mode-alist) (quote ("\\.dtx\\'" . doctex-mode))) (autoload (quote docTeX-mode) "latex" "Major mode in AUCTeX for editing .dtx files derived from `LaTeX-mode'.
Runs `LaTeX-mode', sets a few variables and
runs the hooks in `docTeX-mode-hook'.

(fn)" t nil) (defalias (quote TeX-doctex-mode) (quote docTeX-mode)) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "latex" (quote ("LaTeX-" "docTeX-" "TeX-" "latex-math-mode" "Bib")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "latex-flymake" (quote ("LaTeX-")))) (autoload (quote multi-prompt) "multi-prompt" "Completing prompt for a list of strings.  
The first argument SEPARATOR should be the string (of length 1) to
separate the elements in the list.  The second argument UNIQUE should
be non-nil, if each element must be unique.  The remaining elements
are the arguments to `completing-read'.  See that.

(fn SEPARATOR UNIQUE PROMPT TABLE &optional MP-PREDICATE REQUIRE-MATCH INITIAL HISTORY)" nil nil) (autoload (quote multi-prompt-key-value) "multi-prompt" "Read multiple strings, with completion and key=value support.
PROMPT is a string to prompt with, usually ending with a colon
and a space.  TABLE is an alist.  The car of each element should
be a string representing a key and the optional cdr should be a
list with strings to be used as values for the key.

See the documentation for `completing-read' for details on the
other arguments: PREDICATE, REQUIRE-MATCH, INITIAL-INPUT, HIST,
DEF, and INHERIT-INPUT-METHOD.

The return value is the string as entered in the minibuffer.

(fn PROMPT TABLE &optional PREDICATE REQUIRE-MATCH INITIAL-INPUT HIST DEF INHERIT-INPUT-METHOD)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "multi-prompt" (quote ("multi-prompt-")))) (autoload (quote TeX-plain-tex-mode) "plain-tex" "Major mode in AUCTeX for editing plain TeX files.
See info under AUCTeX for documentation.

Special commands:
\\{plain-TeX-mode-map}

Entering `plain-tex-mode' calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of `plain-TeX-mode-hook'.

(fn)" t nil) (autoload (quote ams-tex-mode) "plain-tex" "Major mode in AUCTeX for editing AmS-TeX files.
See info under AUCTeX for documentation.

Special commands:
\\{AmSTeX-mode-map}

Entering `ams-tex-mode' calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of `AmS-TeX-mode-hook'.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "plain-tex" (quote ("AmS" "plain-TeX-")))) (autoload (quote preview-install-styles) "preview" "Installs the TeX style files into a permanent location.
This must be in the TeX search path.  If FORCE-OVERWRITE is greater
than 1, files will get overwritten without query, if it is less
than 1 or nil, the operation will fail.  The default of 1 for interactive
use will query.

Similarly FORCE-SAVE can be used for saving
`preview-TeX-style-dir' to record the fact that the uninstalled
files are no longer needed in the search path.

(fn DIR &optional FORCE-OVERWRITE FORCE-SAVE)" t nil) (autoload (quote LaTeX-preview-setup) "preview" "Hook function for embedding the preview package into AUCTeX.
This is called by `LaTeX-mode-hook' and changes AUCTeX variables
to add the preview functionality.

(fn)" nil nil) (autoload (quote preview-report-bug) "preview" "Report a bug in the preview-latex package.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "preview" (quote ("preview-" "TeX-" "desktop-buffer-preview")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "prv-emacs" (quote ("preview-")))) (autoload (quote TeX-tex-mode) "tex" "Major mode in AUCTeX for editing TeX or LaTeX files.
Tries to guess whether this file is for plain TeX or LaTeX.

The algorithm is as follows:

   1) if the file is empty or `TeX-force-default-mode' is not set to nil,
      `TeX-default-mode' is chosen
   2) If \\documentstyle or \\begin{, \\section{, \\part{ or \\chapter{ is
      found, `latex-mode' is selected.
   3) Otherwise, use `plain-tex-mode'

(fn)" t nil) (autoload (quote TeX-auto-generate) "tex" "Generate style file for TEX and store it in AUTO.
If TEX is a directory, generate style files for all files in the directory.

(fn TEX AUTO)" t nil) (autoload (quote TeX-auto-generate-global) "tex" "Create global auto directory for global TeX macro definitions.

(fn)" t nil) (autoload (quote TeX-submit-bug-report) "tex" "Submit a bug report on AUCTeX via mail.

Don't hesitate to report any problems or inaccurate documentation.

If you don't have setup sending mail from (X)Emacs, please copy the
output buffer into your mail program, as it gives us important
information about your AUCTeX version and AUCTeX configuration.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "tex" (quote ("TeX-" "ispell-tex-" "Bib" "docTeX-default-extension" "LaTeX-" "plain-TeX-auto-regexp-list" "VirTeX-common-initialization" "tex-" "ConTeXt-")))) (autoload (quote TeX-install-toolbar) "tex-bar" "Install toolbar buttons for TeX mode.

(fn)" t nil) (autoload (quote LaTeX-install-toolbar) "tex-bar" "Install toolbar buttons for LaTeX mode.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "tex-bar" (quote ("TeX-bar-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "tex-buf" (quote ("TeX-" "LaTeX-" "compilation-in-progress")))) (autoload (quote TeX-fold-mode) "tex-fold" "Minor mode for hiding and revealing macros and environments.

Called interactively, with no prefix argument, toggle the mode.
With universal prefix ARG (or if ARG is nil) turn mode on.
With zero or negative ARG turn mode off.

(fn &optional ARG)" t nil) (defalias (quote tex-fold-mode) (quote TeX-fold-mode)) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "tex-fold" (quote ("TeX-fold-")))) (autoload (quote tex-font-setup) "tex-font" "Setup font lock support for TeX.

(fn)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "tex-font" (quote ("tex-")))) (defalias (quote Texinfo-mode) (quote texinfo-mode)) (autoload (quote TeX-texinfo-mode) "tex-info" "Major mode in AUCTeX for editing Texinfo files.

Special commands:
\\{Texinfo-mode-map}

Entering Texinfo mode calls the value of `text-mode-hook'  and then the
value of `Texinfo-mode-hook'.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "tex-info" (quote ("Texinfo-" "texinfo-environment-regexp")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "tex-ispell" (quote ("TeX-ispell-")))) (autoload (quote japanese-plain-tex-mode) "tex-jp" "Major mode in AUCTeX for editing Japanese plain TeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-plain-tex-mode'.

(fn)" t nil) (autoload (quote japanese-latex-mode) "tex-jp" "Major mode in AUCTeX for editing Japanese LaTeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-latex-mode'.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "tex-jp" (quote ("TeX-" "japanese-")))) (require (quote tex-site)) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "tex-site" (quote ("preview-TeX-style-dir" "AUCTeX-" "TeX-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "tex-style" (quote ("LaTeX-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "tex-wizard" (quote ("TeX-wizard")))) (autoload (quote texmathp) "texmathp" "Determine if point is inside (La)TeX math mode.
Returns t or nil.  Additional info is placed into `texmathp-why'.
The functions assumes that you have (almost) syntactically correct (La)TeX in
the buffer.
See the variable `texmathp-tex-commands' about which commands are checked.

(fn)" t nil) (autoload (quote texmathp-match-switch) "texmathp" "Search backward for any of the math switches.
Limit searched to BOUND.

(fn BOUND)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "texmathp" (quote ("texmathp-")))) (autoload (quote toolbarx-install-toolbar) "toolbar-x") (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "toolbar-x" (quote ("toolbarx-")))) (provide (quote auctex-autoloads))) "transpose-frame" ((transpose-frame transpose-frame-autoloads) (autoload (quote transpose-frame) "transpose-frame" "Transpose windows arrangement at FRAME.
Omitting FRAME means currently selected frame.

(fn &optional FRAME)" t nil) (autoload (quote flip-frame) "transpose-frame" "Flip windows arrangement vertically at FRAME.
Omitting FRAME means currently selected frame.

(fn &optional FRAME)" t nil) (autoload (quote flop-frame) "transpose-frame" "Flop windows arrangement horizontally at FRAME.
Omitting FRAME means currently selected frame.

(fn &optional FRAME)" t nil) (autoload (quote rotate-frame) "transpose-frame" "Rotate windows arrangement 180 degrees at FRAME.
Omitting FRAME means currently selected frame.

(fn &optional FRAME)" t nil) (autoload (quote rotate-frame-clockwise) "transpose-frame" "Rotate windows arrangement 90 degrees clockwise at FRAME.
Omitting FRAME means currently selected frame.

(fn &optional FRAME)" t nil) (autoload (quote rotate-frame-anticlockwise) "transpose-frame" "Rotate windows arrangement 90 degrees anti-clockwise at FRAME.
Omitting FRAME means currently selected frame.

(fn &optional FRAME)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "transpose-frame" (quote ("transpose-frame-")))) (provide (quote transpose-frame-autoloads))) "smooth-scrolling" ((smooth-scrolling-autoloads smooth-scrolling) (defvar smooth-scrolling-mode nil "Non-nil if Smooth-Scrolling mode is enabled.
See the `smooth-scrolling-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `smooth-scrolling-mode'.") (custom-autoload (quote smooth-scrolling-mode) "smooth-scrolling" nil) (autoload (quote smooth-scrolling-mode) "smooth-scrolling" "Make emacs scroll smoothly

(fn &optional ARG)" t nil) (defvar smooth-scroll-margin 10 "Number of lines of visible margin at the top and bottom of a window.
If the point is within these margins, then scrolling will occur
smoothly for `previous-line' at the top of the window, and for
`next-line' at the bottom.

This is very similar in its goal to `scroll-margin'.  However, it
is implemented by activating `smooth-scroll-down' and
`smooth-scroll-up' advise via `defadvice' for `previous-line' and
`next-line' respectively.  As a result it avoids problems
afflicting `scroll-margin', such as a sudden jump and unexpected
highlighting of a region when the mouse is clicked in the margin.

Scrolling only occurs when the point is closer to the window
boundary it is heading for (top or bottom) than the middle of the
window.  This is to intelligently handle the case where the
margins cover the whole buffer (e.g. `smooth-scroll-margin' set
to 5 and `window-height' returning 10 or less).

See also `smooth-scroll-strict-margins'.") (custom-autoload (quote smooth-scroll-margin) "smooth-scrolling" t) (defvar smooth-scroll-strict-margins t "If true, the advice code supporting `smooth-scroll-margin'
will use `count-screen-lines' to determine the number of
*visible* lines between the point and the window top/bottom,
rather than `count-lines' which obtains the number of actual
newlines.  This is because there might be extra newlines hidden
by a mode such as folding-mode, outline-mode, org-mode etc., or
fewer due to very long lines being displayed wrapped when
`truncate-lines' is nil.

However, using `count-screen-lines' can supposedly cause
performance issues in buffers with extremely long lines.  Setting
`cache-long-line-scans' may be able to address this;
alternatively you can set this variable to nil so that the advice
code uses `count-lines', and put up with the fact that sometimes
the point will be allowed to stray into the margin.") (custom-autoload (quote smooth-scroll-strict-margins) "smooth-scrolling" t) (autoload (quote enable-smooth-scroll-for-function) "smooth-scrolling" "Define advice on FUNC to do smooth scrolling.

This adds after advice with name `smooth-scroll' to FUNC.

Note that the advice will not have an effect unless
`smooth-scrolling-mode' is enabled.

(fn FUNC)" nil t) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "smooth-scrolling" (quote ("do-smooth-scroll" "disable-smooth-scroll-for-function" "enable-smooth-scroll-for-function-conditionally" "window-is-at-bob-p" "smooth-scroll-")))) (provide (quote smooth-scrolling-autoloads))) "dash" ((dash dash-autoloads) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "dash" (quote ("dash-" "-keep" "-butlast" "-non" "-only-some" "-zip" "-e" "->" "-a" "-gr" "-when-let" "-d" "-l" "-s" "-p" "-r" "-m" "-i" "-f" "-u" "-value-to-list" "-t" "--" "-c" "!cons" "!cdr")))) (provide (quote dash-autoloads))) "s" ((s-autoloads s) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "s" (quote ("s-")))) (provide (quote s-autoloads))) "frames-only-mode" ((frames-only-mode-autoloads frames-only-mode) (defvar frames-only-mode nil "Non-nil if Frames-Only mode is enabled.
See the `frames-only-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `frames-only-mode'.") (custom-autoload (quote frames-only-mode) "frames-only-mode" nil) (autoload (quote frames-only-mode) "frames-only-mode" "Use frames instead of emacs windows.

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "frames-only-mode" (quote ("frames-only-mode-")))) (provide (quote frames-only-mode-autoloads))) "nix-mode" ((nix-store nix-prettify-mode nix-mode nix-search nix-format nix-shell nix-build nix-mode-autoloads nix-edit nix-shebang nix-repl nix-drv-mode nix nix-instantiate nix-log) (autoload (quote pcomplete/nix) "nix" "Completion for the nix command.

(fn)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "nix" (quote ("nix-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "nix-build" (quote ("nix-build")))) (autoload (quote nix-drv-mode) "nix-drv-mode" "Pretty print Nix\342\200\231s .drv files.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "nix-drv-mode" (quote ("nix-drv-mode")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "nix-edit" (quote ("nix-edit")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "nix-format" (quote ("nix-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "nix-instantiate" (quote ("nix-instantiate")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "nix-log" (quote ("nix-log")))) (autoload (quote nix-mode-format) "nix-mode" "Format the entire `nix-mode' buffer.

(fn)" t nil) (autoload (quote nix-indent-line) "nix-mode" "Indent current line in a Nix expression.

(fn)" t nil) (autoload (quote nix-indent-region) "nix-mode" "Indent on a whole region. Enabled by default.
START where to start in region.
END where to end the region.

(fn START END)" t nil) (autoload (quote nix-mode-ffap-nixpkgs-path) "nix-mode" "Support `ffap' for <nixpkgs> declarations.
If STR contains brackets, call `nix-instantiate' to find the
location of STR. If `nix-instantiate' has a nonzero exit code,
don\342\200\231t do anything

(fn STR)" nil nil) (autoload (quote nix-mode) "nix-mode" "Major mode for editing Nix expressions.

The following commands may be useful:

  '\\[newline-and-indent]'
    Insert a newline and move the cursor to align with the previous
    non-empty line.

  '\\[fill-paragraph]'
    Refill a paragraph so that all lines are at most `fill-column'
    lines long.  This should do the right thing for comments beginning
    with `#'.  However, this command doesn't work properly yet if the
    comment is adjacent to code (i.e., no intervening empty lines).
    In that case, select the text to be refilled and use
    `\\[fill-region]' instead.

The hook `nix-mode-hook' is run when Nix mode is started.

\\{nix-mode-map}

(fn)" t nil) (add-to-list (quote auto-mode-alist) (quote ("\\.nix\\'" . nix-mode))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "nix-mode" (quote ("nix-")))) (autoload (quote nix-prettify-mode) "nix-prettify-mode" "Toggle Nix Prettify mode.

With a prefix argument ARG, enable Nix Prettify mode if ARG is
positive, and disable it otherwise.  If called from Lisp, enable
the mode if ARG is omitted or nil.

When Nix Prettify mode is enabled, hash-parts of the Nix store
file names (see `nix-prettify-regexp') are prettified,
i.e. displayed as `nix-prettify-char' character.  This mode can
be enabled programmatically using hooks:

  (add-hook 'shell-mode-hook 'nix-prettify-mode)

It is possible to enable the mode in any buffer, however not any
buffer's highlighting may survive after adding new elements to
`font-lock-keywords' (see `nix-prettify-special-modes' for
details).

Also you can use `global-nix-prettify-mode' to enable Nix
Prettify mode for all modes that support font-locking.

(fn &optional ARG)" t nil) (defvar nix-prettify-global-mode nil "Non-nil if Nix-Prettify-Global mode is enabled.
See the `nix-prettify-global-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `nix-prettify-global-mode'.") (custom-autoload (quote nix-prettify-global-mode) "nix-prettify-mode" nil) (autoload (quote nix-prettify-global-mode) "nix-prettify-mode" "Toggle Nix-Prettify mode in all buffers.
With prefix ARG, enable Nix-Prettify-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Nix-Prettify mode is enabled in all buffers where
`nix-prettify-turn-on' would do it.
See `nix-prettify-mode' for more information on Nix-Prettify mode.

(fn &optional ARG)" t nil) (define-obsolete-function-alias (quote global-nix-prettify-mode) (quote nix-prettify-global-mode)) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "nix-prettify-mode" (quote ("nix-prettify-")))) (autoload (quote nix-repl) "nix-repl" "Load the Nix-REPL.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "nix-repl" (quote ("nix-")))) (autoload (quote nix-search) "nix-search" "Run nix search.
SEARCH a search term to use.
FILE a Nix expression to search in.

(fn &optional SEARCH FILE)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "nix-search" (quote ("nix-search-read-attr")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "nix-shebang" (quote ("nix-shebang-")))) (autoload (quote nix-shell-unpack) "nix-shell" "Run Nix\342\200\231s unpackPhase.
FILE is the file to unpack from.
ATTR is the attribute to unpack.

(fn FILE ATTR)" t nil) (autoload (quote nix-shell-configure) "nix-shell" "Run Nix\342\200\231s configurePhase.
FILE is the file to configure from.
ATTR is the attribute to configure.

(fn FILE ATTR)" t nil) (autoload (quote nix-shell-build) "nix-shell" "Run Nix\342\200\231s buildPhase.
FILE is the file to build from.
ATTR is the attribute to build.

(fn FILE ATTR)" t nil) (autoload (quote nix-shell-with-string) "nix-shell" "A nix-shell emulator in Emacs from a string.
STRING the nix expression to use.

(fn STRING)" nil nil) (autoload (quote nix-shell) "nix-shell" "A nix-shell emulator in Emacs.
FILE the file to instantiate.
ATTR an attribute of the Nix file to use.

(fn FILE &optional ATTR)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "nix-shell" (quote ("nix-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "nix-store" (quote ("nix-store-realise")))) (provide (quote nix-mode-autoloads))) "haskell-mode" ((haskell-cabal haskell-sort-imports haskell-session haskell-string haskell-mode-autoloads haskell-doc haskell-ghc-support haskell-navigate-imports haskell-interactive-mode haskell-commands haskell-sandbox haskell-load haskell-decl-scan haskell-customize w3m-haddock haskell-lexeme haskell-mode-pkg haskell-utils highlight-uses-mode haskell-svg haskell-completions haskell-indentation haskell haskell-move-nested haskell-hoogle haskell-font-lock haskell-process haskell-indent haskell-repl haskell-collapse haskell-mode haskell-compile haskell-complete-module haskell-modules haskell-c2hs haskell-compat ghci-script-mode haskell-presentation-mode haskell-debug haskell-align-imports haskell-unicode-input-method inf-haskell ghc-core haskell-menu) (let ((loads (get (quote ghc-core) (quote custom-loads)))) (if (member (quote "ghc-core") loads) nil (put (quote ghc-core) (quote custom-loads) (cons (quote "ghc-core") loads)))) (autoload (quote ghc-core-create-core) "ghc-core" "Compile and load the current buffer as tidy core.

(fn)" t nil) (add-to-list (quote auto-mode-alist) (quote ("\\.hcr\\'" . ghc-core-mode))) (add-to-list (quote auto-mode-alist) (quote ("\\.dump-simpl\\'" . ghc-core-mode))) (autoload (quote ghc-core-mode) "ghc-core" "Major mode for GHC Core files.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ghc-core" (quote ("ghc-core-")))) (autoload (quote ghci-script-mode) "ghci-script-mode" "Major mode for working with .ghci files.

(fn)" t nil) (add-to-list (quote auto-mode-alist) (quote ("\\.ghci\\'" . ghci-script-mode))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ghci-script-mode" (quote ("ghci-script-mode-")))) (autoload (quote interactive-haskell-mode) "haskell" "Minor mode for enabling haskell-process interaction.

(fn &optional ARG)" t nil) (autoload (quote haskell-interactive-mode-return) "haskell" "Handle the return key.

(fn)" t nil) (autoload (quote haskell-session-kill) "haskell" "Kill the session process and buffer, delete the session.
0. Prompt to kill all associated buffers.
1. Kill the process.
2. Kill the interactive buffer unless LEAVE-INTERACTIVE-BUFFER is not given.
3. Walk through all the related buffers and set their haskell-session to nil.
4. Remove the session from the sessions list.

(fn &optional LEAVE-INTERACTIVE-BUFFER)" t nil) (autoload (quote haskell-interactive-kill) "haskell" "Kill the buffer and (maybe) the session.

(fn)" t nil) (autoload (quote haskell-session) "haskell" "Get the Haskell session, prompt if there isn't one or fail.

(fn)" nil nil) (autoload (quote haskell-interactive-switch) "haskell" "Switch to the interactive mode for this session.

(fn)" t nil) (autoload (quote haskell-session-change) "haskell" "Change the session for the current buffer.

(fn)" t nil) (autoload (quote haskell-kill-session-process) "haskell" "Kill the process.

(fn &optional SESSION)" t nil) (autoload (quote haskell-interactive-mode-visit-error) "haskell" "Visit the buffer of the current (or last) error message.

(fn)" t nil) (autoload (quote haskell-mode-jump-to-tag) "haskell" "Jump to the tag of the given identifier.

Give optional NEXT-P parameter to override value of
`xref-prompt-for-identifier' during definition search.

(fn &optional NEXT-P)" t nil) (autoload (quote haskell-mode-after-save-handler) "haskell" "Function that will be called after buffer's saving.

(fn)" nil nil) (autoload (quote haskell-mode-tag-find) "haskell" "The tag find function, specific for the particular session.

(fn &optional NEXT-P)" t nil) (autoload (quote haskell-interactive-bring) "haskell" "Bring up the interactive mode for this session.

(fn)" t nil) (autoload (quote haskell-process-load-file) "haskell" "Load the current buffer file.

(fn)" t nil) (autoload (quote haskell-process-reload) "haskell" "Re-load the current buffer file.

(fn)" t nil) (autoload (quote haskell-process-reload-file) "haskell" "

(fn)" nil nil) (autoload (quote haskell-process-load-or-reload) "haskell" "Load or reload. Universal argument toggles which.

(fn &optional TOGGLE)" t nil) (autoload (quote haskell-process-cabal-build) "haskell" "Build the Cabal project.

(fn)" t nil) (autoload (quote haskell-process-cabal) "haskell" "Prompts for a Cabal command to run.

(fn P)" t nil) (autoload (quote haskell-process-minimal-imports) "haskell" "Dump minimal imports.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell" (quote ("haskell-" "xref-prompt-for-identifier" "interactive-haskell-mode-map")))) (autoload (quote haskell-align-imports) "haskell-align-imports" "Align all the imports in the buffer.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-align-imports" (quote ("haskell-align-imports-")))) (add-to-list (quote auto-mode-alist) (quote ("\\.chs\\'" . haskell-c2hs-mode))) (autoload (quote haskell-c2hs-mode) "haskell-c2hs" "Mode for editing *.chs files of the c2hs haskell tool.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-c2hs" (quote ("haskell-c2hs-font-lock-keywords")))) (add-to-list (quote auto-mode-alist) (quote ("\\.cabal\\'" . haskell-cabal-mode))) (autoload (quote haskell-cabal-mode) "haskell-cabal" "Major mode for Cabal package description files.

(fn)" t nil) (autoload (quote haskell-cabal-get-field) "haskell-cabal" "Read the value of field with NAME from project's cabal file.
If there is no valid .cabal file to get the setting from (or
there is no corresponding setting with that name in the .cabal
file), then this function returns nil.

(fn NAME)" t nil) (autoload (quote haskell-cabal-get-dir) "haskell-cabal" "Get the Cabal dir for a new project. Various ways of figuring this out,
   and indeed just prompting the user. Do them all.

(fn &optional USE-DEFAULTS)" nil nil) (autoload (quote haskell-cabal-visit-file) "haskell-cabal" "Locate and visit package description file for file visited by current buffer.
This uses `haskell-cabal-find-file' to locate the closest
\".cabal\" file and open it.  This command assumes a common Cabal
project structure where the \".cabal\" file is in the top-folder
of the project, and all files related to the project are in or
below the top-folder.  If called with non-nil prefix argument
OTHER-WINDOW use `find-file-other-window'.

(fn OTHER-WINDOW)" t nil) (let ((loads (get (quote haskell-cabal) (quote custom-loads)))) (if (member (quote "haskell-cabal") loads) nil (put (quote haskell-cabal) (quote custom-loads) (cons (quote "haskell-cabal") loads)))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-cabal" (quote ("haskell-")))) (autoload (quote haskell-collapse-mode) "haskell-collapse" "Minor mode to collapse and expand haskell expressions

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-collapse" (quote ("haskell-")))) (autoload (quote haskell-process-restart) "haskell-commands" "Restart the inferior Haskell process.

(fn)" t nil) (autoload (quote haskell-process-clear) "haskell-commands" "Clear the current process.

(fn)" t nil) (autoload (quote haskell-process-interrupt) "haskell-commands" "Interrupt the process (SIGINT).

(fn)" t nil) (autoload (quote haskell-describe) "haskell-commands" "Describe the given identifier IDENT.

(fn IDENT)" t nil) (autoload (quote haskell-rgrep) "haskell-commands" "Grep the effective project for the symbol at point.
Very useful for codebase navigation.

Prompts for an arbitrary regexp given a prefix arg PROMPT.

(fn &optional PROMPT)" t nil) (autoload (quote haskell-process-do-info) "haskell-commands" "Print info on the identifier at point.
If PROMPT-VALUE is non-nil, request identifier via mini-buffer.

(fn &optional PROMPT-VALUE)" t nil) (autoload (quote haskell-process-do-type) "haskell-commands" "Print the type of the given expression.

Given INSERT-VALUE prefix indicates that result type signature
should be inserted.

(fn &optional INSERT-VALUE)" t nil) (autoload (quote haskell-mode-jump-to-def-or-tag) "haskell-commands" "Jump to the definition.
Jump to definition of identifier at point by consulting GHCi, or
tag table as fallback.

Remember: If GHCi is busy doing something, this will delay, but
it will always be accurate, in contrast to tags, which always
work but are not always accurate.
If the definition or tag is found, the location from which you jumped
will be pushed onto `xref--marker-ring', so you can return to that
position with `xref-pop-marker-stack'.

(fn &optional NEXT-P)" t nil) (autoload (quote haskell-mode-goto-loc) "haskell-commands" "Go to the location of the thing at point.
Requires the :loc-at command from GHCi.

(fn)" t nil) (autoload (quote haskell-mode-jump-to-def) "haskell-commands" "Jump to definition of identifier IDENT at point.

(fn IDENT)" t nil) (autoload (quote haskell-process-cd) "haskell-commands" "Change directory.

(fn &optional NOT-INTERACTIVE)" t nil) (autoload (quote haskell-process-cabal-macros) "haskell-commands" "Send the cabal macros string.

(fn)" t nil) (autoload (quote haskell-mode-show-type-at) "haskell-commands" "Show type of the thing at point or within active region asynchronously.
This function requires GHCi 8+ or GHCi-ng.

\\<haskell-interactive-mode-map>
To make this function works sometimes you need to load the file in REPL
first using command `haskell-process-load-file' bound to
\\[haskell-process-load-file].

Optional argument INSERT-VALUE indicates that
recieved type signature should be inserted (but only if nothing
happened since function invocation).

(fn &optional INSERT-VALUE)" t nil) (autoload (quote haskell-process-unignore) "haskell-commands" "Unignore any ignored files.
Do not ignore files that were specified as being ignored by the
inferior GHCi process.

(fn)" t nil) (autoload (quote haskell-session-change-target) "haskell-commands" "Set the build TARGET for cabal REPL.

(fn TARGET)" t nil) (autoload (quote haskell-mode-stylish-buffer) "haskell-commands" "Apply stylish-haskell to the current buffer.

Use `haskell-mode-stylish-haskell-path' to know where to find
stylish-haskell executable. This function tries to preserve
cursor position and markers by using
`haskell-mode-buffer-apply-command'.

(fn)" t nil) (autoload (quote haskell-mode-find-uses) "haskell-commands" "Find use cases of the identifier at point and highlight them all.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-commands" (quote ("haskell-")))) (let ((loads (get (quote haskell-compile) (quote custom-loads)))) (if (member (quote "haskell-compile") loads) nil (put (quote haskell-compile) (quote custom-loads) (cons (quote "haskell-compile") loads)))) (autoload (quote haskell-compile) "haskell-compile" "Run a compile command for the current Haskell buffer.

Locates stack or cabal definitions and, if found, invokes the
default build command for that build tool. Cabal is preferred
but may be ignored with `haskell-compile-ignore-cabal'.

If prefix argument EDIT-COMMAND is non-nil (and not a negative
prefix `-'), prompt for a custom compile command.

If EDIT-COMMAND contains the negative prefix argument `-', call
the alternative command defined in
`haskell-compile-stack-build-alt-command' /
`haskell-compile-cabal-build-alt-command'.

If there is no prefix argument, the most recent custom compile
command is used, falling back to
`haskell-compile-stack-build-command' for stack builds
`haskell-compile-cabal-build-command' for cabal builds, and
`haskell-compile-command' otherwise.

'% characters in the `-command' templates are replaced by the
base directory for build tools, or the current buffer for
`haskell-compile-command'.

(fn &optional EDIT-COMMAND)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-compile" (quote ("haskell-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-complete-module" (quote ("haskell-complete-module")))) (let ((loads (get (quote haskell-completions) (quote custom-loads)))) (if (member (quote "haskell-completions") loads) nil (put (quote haskell-completions) (quote custom-loads) (cons (quote "haskell-completions") loads)))) (autoload (quote haskell-completions-completion-at-point) "haskell-completions" "Provide completion list for thing at point.
This function is used in non-interactive `haskell-mode'.  It
provides completions for haskell keywords, language pragmas,
GHC's options, and language extensions, but not identifiers.

(fn)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-completions" (quote ("haskell-completions-")))) (let ((loads (get (quote haskell) (quote custom-loads)))) (if (member (quote "haskell-customize") loads) nil (put (quote haskell) (quote custom-loads) (cons (quote "haskell-customize") loads)))) (let ((loads (get (quote haskell-interactive) (quote custom-loads)))) (if (member (quote "haskell-customize") loads) nil (put (quote haskell-interactive) (quote custom-loads) (cons (quote "haskell-customize") loads)))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-customize" (quote ("haskell-" "inferior-haskell-root-dir")))) (let ((loads (get (quote haskell-debug) (quote custom-loads)))) (if (member (quote "haskell-debug") loads) nil (put (quote haskell-debug) (quote custom-loads) (cons (quote "haskell-debug") loads)))) (defface haskell-debug-warning-face (quote ((t :inherit (quote compilation-warning)))) "Face for warnings." :group (quote haskell-debug)) (defface haskell-debug-trace-number-face (quote ((t :weight bold :background "#f5f5f5"))) "Face for numbers in backtrace." :group (quote haskell-debug)) (defface haskell-debug-newline-face (quote ((t :weight bold :background "#f0f0f0"))) "Face for newlines in trace steps." :group (quote haskell-debug)) (defface haskell-debug-keybinding-face (quote ((t :inherit (quote font-lock-type-face) :weight bold))) "Face for keybindings." :group (quote haskell-debug)) (defface haskell-debug-heading-face (quote ((t :inherit (quote font-lock-keyword-face)))) "Face for headings." :group (quote haskell-debug)) (defface haskell-debug-muted-face (quote ((t :foreground "#999"))) "Face for muteds." :group (quote haskell-debug)) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-debug" (quote ("haskell-debug")))) (let ((loads (get (quote haskell-decl-scan) (quote custom-loads)))) (if (member (quote "haskell-decl-scan") loads) nil (put (quote haskell-decl-scan) (quote custom-loads) (cons (quote "haskell-decl-scan") loads)))) (autoload (quote haskell-ds-create-imenu-index) "haskell-decl-scan" "Function for finding `imenu' declarations in Haskell mode.
Finds all declarations (classes, variables, imports, instances and
datatypes) in a Haskell file for the `imenu' package.

(fn)" nil nil) (autoload (quote turn-on-haskell-decl-scan) "haskell-decl-scan" "Unconditionally activate `haskell-decl-scan-mode'.

(fn)" t nil) (autoload (quote haskell-decl-scan-mode) "haskell-decl-scan" "Toggle Haskell declaration scanning minor mode on or off.
With a prefix argument ARG, enable minor mode if ARG is
positive, and disable it otherwise.  If called from Lisp, enable
the mode if ARG is omitted or nil, and toggle it if ARG is `toggle'.

See also info node `(haskell-mode)haskell-decl-scan-mode' for
more details about this minor mode.

Top-level declarations are scanned and listed in the menu item
\"Declarations\" (if enabled via option
`haskell-decl-scan-add-to-menubar').  Selecting an item from this
menu will take point to the start of the declaration.

\\[beginning-of-defun] and \\[end-of-defun] move forward and backward to the start of a declaration.

This may link with `haskell-doc-mode'.

For non-literate and LaTeX-style literate scripts, we assume the
common convention that top-level declarations start at the first
column.  For Bird-style literate scripts, we assume the common
convention that top-level declarations start at the third column,
ie. after \"> \".

Anything in `font-lock-comment-face' is not considered for a
declaration.  Therefore, using Haskell font locking with comments
coloured in `font-lock-comment-face' improves declaration scanning.

Literate Haskell scripts are supported: If the value of
`haskell-literate' (set automatically by `literate-haskell-mode')
is `bird', a Bird-style literate script is assumed.  If it is nil
or `tex', a non-literate or LaTeX-style literate script is
assumed, respectively.

Invokes `haskell-decl-scan-mode-hook' on activation.

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-decl-scan" (quote ("haskell-d" "literate-haskell-ds-")))) (let ((loads (get (quote haskell-doc) (quote custom-loads)))) (if (member (quote "haskell-doc") loads) nil (put (quote haskell-doc) (quote custom-loads) (cons (quote "haskell-doc") loads)))) (autoload (quote haskell-doc-mode) "haskell-doc" "Enter `haskell-doc-mode' for showing fct types in the echo area.
See variable docstring.

(fn &optional ARG)" t nil) (defalias (quote turn-on-haskell-doc-mode) (quote haskell-doc-mode)) (defalias (quote turn-on-haskell-doc) (quote haskell-doc-mode)) (autoload (quote haskell-doc-current-info) "haskell-doc" "Return the info about symbol at point.
Meant for `eldoc-documentation-function'.

(fn)" nil nil) (autoload (quote haskell-doc-show-type) "haskell-doc" "Show the type of the function near point or given symbol SYM.
For the function under point, show the type in the echo area.
This information is extracted from the `haskell-doc-prelude-types' alist
of prelude functions and their types, or from the local functions in the
current buffer.

(fn &optional SYM)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-doc" (quote ("inferior-haskell-" "haskell-" "turn-off-haskell-doc")))) (let ((loads (get (quote haskell-appearance) (quote custom-loads)))) (if (member (quote "haskell-font-lock") loads) nil (put (quote haskell-appearance) (quote custom-loads) (cons (quote "haskell-font-lock") loads)))) (defface haskell-keyword-face (quote ((t :inherit font-lock-keyword-face))) "Face used to highlight Haskell keywords." :group (quote haskell-appearance)) (defface haskell-type-face (quote ((t :inherit font-lock-type-face))) "Face used to highlight Haskell types" :group (quote haskell-appearance)) (defface haskell-constructor-face (quote ((t :inherit font-lock-type-face))) "Face used to highlight Haskell constructors." :group (quote haskell-appearance)) (defface haskell-operator-face (quote ((t :inherit font-lock-variable-name-face))) "Face used to highlight Haskell operators." :group (quote haskell-appearance)) (defface haskell-pragma-face (quote ((t :inherit font-lock-preprocessor-face))) "Face used to highlight Haskell pragmas ({-# ... #-})." :group (quote haskell-appearance)) (defface haskell-liquid-haskell-annotation-face (quote ((t :inherit haskell-pragma-face))) "Face used to highlight LiquidHaskell annotations ({-@ ... @-})." :group (quote haskell-appearance)) (defface haskell-literate-comment-face (quote ((t :inherit font-lock-doc-face))) "Face with which to fontify literate comments.
Inherit from `default' to avoid fontification of them." :group (quote haskell-appearance)) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-font-lock" (quote ("haskell-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-ghc-support" (quote ("haskell-")))) (autoload (quote haskell-hoogle) "haskell-hoogle" "Do a Hoogle search for QUERY.
When `haskell-hoogle-command' is non-nil, this command runs
that.  Otherwise, it opens a hoogle search result in the browser.

If prefix argument INFO is given, then `haskell-hoogle-command'
is asked to show extra info for the items matching QUERY..

(fn QUERY &optional INFO)" t nil) (defalias (quote hoogle) (quote haskell-hoogle)) (autoload (quote haskell-hoogle-lookup-from-local) "haskell-hoogle" "Lookup by local hoogle.

(fn)" t nil) (autoload (quote haskell-hayoo) "haskell-hoogle" "Do a Hayoo search for QUERY.

(fn QUERY)" t nil) (defalias (quote hayoo) (quote haskell-hayoo)) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-hoogle" (quote ("haskell-h")))) (let ((loads (get (quote haskell-indent) (quote custom-loads)))) (if (member (quote "haskell-indent") loads) nil (put (quote haskell-indent) (quote custom-loads) (cons (quote "haskell-indent") loads)))) (autoload (quote turn-on-haskell-indent) "haskell-indent" "Turn on ``intelligent'' Haskell indentation mode.

(fn)" nil nil) (autoload (quote haskell-indent-mode) "haskell-indent" "``Intelligent'' Haskell indentation mode.
This deals with the layout rule of Haskell.
\\[haskell-indent-cycle] starts the cycle which proposes new
possibilities as long as the TAB key is pressed.  Any other key
or mouse click terminates the cycle and is interpreted except for
RET which merely exits the cycle.
Other special keys are:
    \\[haskell-indent-insert-equal]
      inserts an =
    \\[haskell-indent-insert-guard]
      inserts an |
    \\[haskell-indent-insert-otherwise]
      inserts an | otherwise =
these functions also align the guards and rhs of the current definition
    \\[haskell-indent-insert-where]
      inserts a where keyword
    \\[haskell-indent-align-guards-and-rhs]
      aligns the guards and rhs of the region
    \\[haskell-indent-put-region-in-literate]
      makes the region a piece of literate code in a literate script

If `ARG' is falsey, toggle `haskell-indent-mode'.  Else sets
`haskell-indent-mode' to whether `ARG' is greater than 0.

Invokes `haskell-indent-hook' if not nil.

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-indent" (quote ("turn-off-haskell-indent" "haskell-indent-")))) (let ((loads (get (quote haskell-indentation) (quote custom-loads)))) (if (member (quote "haskell-indentation") loads) nil (put (quote haskell-indentation) (quote custom-loads) (cons (quote "haskell-indentation") loads)))) (autoload (quote haskell-indentation-mode) "haskell-indentation" "Haskell indentation mode that deals with the layout rule.
It rebinds RET, DEL and BACKSPACE, so that indentations can be
set and deleted as if they were real tabs.

(fn &optional ARG)" t nil) (autoload (quote turn-on-haskell-indentation) "haskell-indentation" "Turn on the haskell-indentation minor mode.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-indentation" (quote ("haskell-indentation-")))) (defface haskell-interactive-face-prompt (quote ((t :inherit font-lock-function-name-face))) "Face for the prompt." :group (quote haskell-interactive)) (defface haskell-interactive-face-prompt2 (quote ((t :inherit font-lock-keyword-face))) "Face for the prompt2 in multi-line mode." :group (quote haskell-interactive)) (defface haskell-interactive-face-compile-error (quote ((t :inherit compilation-error))) "Face for compile errors." :group (quote haskell-interactive)) (defface haskell-interactive-face-compile-warning (quote ((t :inherit compilation-warning))) "Face for compiler warnings." :group (quote haskell-interactive)) (defface haskell-interactive-face-result (quote ((t :inherit font-lock-string-face))) "Face for the result." :group (quote haskell-interactive)) (defface haskell-interactive-face-garbage (quote ((t :inherit font-lock-string-face))) "Face for trailing garbage after a command has completed." :group (quote haskell-interactive)) (autoload (quote haskell-interactive-mode-reset-error) "haskell-interactive-mode" "Reset the error cursor position.

(fn SESSION)" t nil) (autoload (quote haskell-interactive-mode-echo) "haskell-interactive-mode" "Echo a read only piece of text before the prompt.

(fn SESSION MESSAGE &optional MODE)" nil nil) (autoload (quote haskell-process-show-repl-response) "haskell-interactive-mode" "Send LINE to the GHCi process and echo the result in some fashion.
Result will be printed in the minibuffer or presented using
function `haskell-presentation-present', depending on variable
`haskell-process-use-presentation-mode'.

(fn LINE)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-interactive-mode" (quote ("haskell-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-lexeme" (quote ("haskell-lexeme-")))) (defface haskell-error-face (quote ((((supports :underline (:style wave))) :underline (:style wave :color "#dc322f")) (t :inherit error))) "Face used for marking error lines." :group (quote haskell-mode)) (defface haskell-warning-face (quote ((((supports :underline (:style wave))) :underline (:style wave :color "#b58900")) (t :inherit warning))) "Face used for marking warning lines." :group (quote haskell-mode)) (defface haskell-hole-face (quote ((((supports :underline (:style wave))) :underline (:style wave :color "#6c71c4")) (t :inherit warning))) "Face used for marking hole lines." :group (quote haskell-mode)) (autoload (quote haskell-process-reload-devel-main) "haskell-load" "Reload the module `DevelMain' and then run `DevelMain.update'.

This is for doing live update of the code of servers or GUI
applications.  Put your development version of the program in
`DevelMain', and define `update' to auto-start the program on a
new thread, and use the `foreign-store' package to access the
running context across :load/:reloads in GHCi.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-load" (quote ("haskell-")))) (autoload (quote haskell-menu) "haskell-menu" "Launch the Haskell sessions menu.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-menu" (quote ("haskell-menu-")))) (autoload (quote haskell-version) "haskell-mode" "Show the `haskell-mode` version in the echo area.
With prefix argument HERE, insert it at point.

(fn &optional HERE)" t nil) (autoload (quote haskell-mode-view-news) "haskell-mode" "Display information on recent changes to haskell-mode.

(fn)" t nil) (autoload (quote haskell-mode) "haskell-mode" "Major mode for editing Haskell programs.

\\<haskell-mode-map>

Literate Haskell scripts are supported via `literate-haskell-mode'.
The variable `haskell-literate' indicates the style of the script in the
current buffer.  See the documentation on this variable for more details.

Use `haskell-version' to find out what version of Haskell mode you are
currently using.

Additional Haskell mode modules can be hooked in via `haskell-mode-hook'.

Indentation modes:

    `haskell-indentation-mode', Kristof Bastiaensen, Gergely Risko
      Intelligent semi-automatic indentation Mk2

    `haskell-indent-mode', Guy Lapalme
      Intelligent semi-automatic indentation.

Interaction modes:

    `interactive-haskell-mode'
      Interact with per-project GHCi processes through a REPL and
      directory-aware sessions.

Other modes:

    `haskell-decl-scan-mode', Graeme E Moss
      Scans top-level declarations, and places them in a menu.

    `haskell-doc-mode', Hans-Wolfgang Loidl
      Echoes types of functions or syntax of keywords when the cursor is idle.

To activate a minor-mode, simply run the interactive command. For
example, `M-x haskell-doc-mode'. Run it again to disable it.

To enable a mode for every haskell-mode buffer, add a hook in
your Emacs configuration. To do that you can customize
`haskell-mode-hook' or add lines to your .emacs file. For
example, to enable `interactive-haskell-mode', use the following:

    (add-hook 'haskell-mode-hook 'interactive-haskell-mode)

Minor modes that work well with `haskell-mode':

- `smerge-mode': show and work with diff3 conflict markers used
  by git, svn and other version control systems.

(fn)" t nil) (autoload (quote haskell-forward-sexp) "haskell-mode" "Haskell specific version of `forward-sexp'.

Move forward across one balanced expression (sexp).  With ARG, do
it that many times.  Negative arg -N means move backward across N
balanced expressions.  This command assumes point is not in a
string or comment.

If unable to move over a sexp, signal `scan-error' with three
arguments: a message, the start of the obstacle (a parenthesis or
list marker of some kind), and end of the obstacle.

(fn &optional ARG)" t nil) (autoload (quote literate-haskell-mode) "haskell-mode" "As `haskell-mode' but for literate scripts.

(fn)" t nil) (add-to-list (quote auto-mode-alist) (quote ("\\.[gh]s\\'" . haskell-mode))) (add-to-list (quote auto-mode-alist) (quote ("\\.hsig\\'" . haskell-mode))) (add-to-list (quote auto-mode-alist) (quote ("\\.l[gh]s\\'" . literate-haskell-mode))) (add-to-list (quote auto-mode-alist) (quote ("\\.hsc\\'" . haskell-mode))) (add-to-list (quote interpreter-mode-alist) (quote ("runghc" . haskell-mode))) (add-to-list (quote interpreter-mode-alist) (quote ("runhaskell" . haskell-mode))) (add-to-list (quote completion-ignored-extensions) ".hi") (autoload (quote haskell-mode-generate-tags) "haskell-mode" "Generate tags using Hasktags.  This is synchronous function.

If optional AND-THEN-FIND-THIS-TAG argument is present it is used
with function `xref-find-definitions' after new table was
generated.

(fn &optional AND-THEN-FIND-THIS-TAG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-mode" (quote ("haskell-")))) (autoload (quote haskell-session-installed-modules) "haskell-modules" "Get the modules installed in the current package set.

(fn SESSION &optional DONTCREATE)" nil nil) (autoload (quote haskell-session-all-modules) "haskell-modules" "Get all modules -- installed or in the current project.
If DONTCREATE is non-nil don't create a new session.

(fn SESSION &optional DONTCREATE)" nil nil) (autoload (quote haskell-session-project-modules) "haskell-modules" "Get the modules of the current project.
If DONTCREATE is non-nil don't create a new session.

(fn SESSION &optional DONTCREATE)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-modules" (quote ("haskell-")))) (autoload (quote haskell-move-nested) "haskell-move-nested" "Shift the nested off-side-rule block adjacent to point by COLS columns to the right.

In Transient Mark mode, if the mark is active, operate on the contents
of the region instead.

(fn COLS)" nil nil) (autoload (quote haskell-move-nested-right) "haskell-move-nested" "Increase indentation of the following off-side-rule block adjacent to point.

Use a numeric prefix argument to indicate amount of indentation to apply.

In Transient Mark mode, if the mark is active, operate on the contents
of the region instead.

(fn COLS)" t nil) (autoload (quote haskell-move-nested-left) "haskell-move-nested" "Decrease indentation of the following off-side-rule block adjacent to point.

Use a numeric prefix argument to indicate amount of indentation to apply.

In Transient Mark mode, if the mark is active, operate on the contents
of the region instead.

(fn COLS)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-move-nested" (quote ("haskell-")))) (autoload (quote haskell-navigate-imports) "haskell-navigate-imports" "Cycle the Haskell import lines or return to point (with prefix arg).

(fn &optional RETURN)" t nil) (autoload (quote haskell-navigate-imports-go) "haskell-navigate-imports" "Go to the first line of a list of consecutive import lines. Cycles.

(fn)" t nil) (autoload (quote haskell-navigate-imports-return) "haskell-navigate-imports" "Return to the non-import point we were at before going to the module list.
   If we were originally at an import list, we can just cycle through easily.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-navigate-imports" (quote ("haskell-navigate-imports-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-presentation-mode" (quote ("haskell-presentation-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-process" (quote ("haskell-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-repl" (quote ("haskell-interactive-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-sandbox" (quote ("haskell-sandbox-")))) (autoload (quote haskell-session-maybe) "haskell-session" "Maybe get the Haskell session, return nil if there isn't one.

(fn)" nil nil) (autoload (quote haskell-session-process) "haskell-session" "Get the session process.

(fn S)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-session" (quote ("haskell-session")))) (autoload (quote haskell-sort-imports) "haskell-sort-imports" "Sort the import list at point. It sorts the current group
i.e. an import list separated by blank lines on either side.

If the region is active, it will restrict the imports to sort
within that region.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-sort-imports" (quote ("haskell-sort-imports-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-string" (quote ("haskell-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-svg" (quote ("haskell-svg-")))) (autoload (quote turn-on-haskell-unicode-input-method) "haskell-unicode-input-method" "Set input method `haskell-unicode'.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "haskell-utils" (quote ("haskell-")))) (autoload (quote highlight-uses-mode) "highlight-uses-mode" "Minor mode for highlighting and jumping between uses.

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "highlight-uses-mode" (quote ("highlight-uses-mode-")))) (let ((loads (get (quote inferior-haskell) (quote custom-loads)))) (if (member (quote "inf-haskell") loads) nil (put (quote inferior-haskell) (quote custom-loads) (cons (quote "inf-haskell") loads)))) (defalias (quote run-haskell) (quote switch-to-haskell)) (autoload (quote switch-to-haskell) "inf-haskell" "Show the inferior-haskell buffer.  Start the process if needed.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "inf-haskell" (quote ("haskell-" "inf")))) (defface w3m-haddock-heading-face (quote ((((class color)) :inherit highlight))) "Face for quarantines." :group (quote haskell)) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "w3m-haddock" (quote ("w3m-haddock-" "haskell-w3m-")))) (provide (quote haskell-mode-autoloads))) "sudo-edit" ((sudo-edit sudo-edit-autoloads) (autoload (quote sudo-edit-set-header) "sudo-edit" "*Display a warning in header line of the current buffer.
This function is suitable to add to `find-file-hook' and `dired-file-hook'.

(fn)" nil nil) (defvar sudo-edit-indicator-mode nil "Non-nil if Sudo-Edit-Indicator mode is enabled.
See the `sudo-edit-indicator-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `sudo-edit-indicator-mode'.") (custom-autoload (quote sudo-edit-indicator-mode) "sudo-edit" nil) (autoload (quote sudo-edit-indicator-mode) "sudo-edit" "Indicates editing as root by displaying a message in the header line.

(fn &optional ARG)" t nil) (autoload (quote sudo-edit) "sudo-edit" "Edit currently visited file as another user, by default `sudo-edit-user'.

With a prefix ARG prompt for a file to visit.  Will also prompt
for a file to visit if current buffer is not visiting a file.

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "sudo-edit" (quote ("sudo-edit-")))) (provide (quote sudo-edit-autoloads))) "base16-theme" ((base16-zenburn-theme base16-flat-theme base16-black-metal-nile-theme base16-brushtrees-dark-theme base16-papercolor-light-theme base16-summerfruit-light-theme base16-eighties-theme base16-black-metal-mayhem-theme base16-summerfruit-dark-theme base16-shapeshifter-theme base16-material-darker-theme base16-ia-dark-theme base16-tomorrow-night-theme base16-atelier-savanna-light-theme base16-darktooth-theme base16-black-metal-marduk-theme base16-xcode-dusk-theme base16-heetch-light-theme base16-mexico-light-theme base16-solarized-light-theme base16-black-metal-immortal-theme base16-bright-theme base16-material-theme base16-google-dark-theme base16-tomorrow-theme base16-atelier-cave-theme base16-atelier-sulphurpool-theme base16-ashes-theme base16-porple-theme base16-atelier-estuary-light-theme base16-rebecca-theme base16-isotope-theme base16-marrakesh-theme base16-gruvbox-light-medium-theme base16-classic-dark-theme base16-oceanicnext-theme base16-railscasts-theme base16-classic-light-theme base16-black-metal-gorgoroth-theme base16-pop-theme base16-google-light-theme base16-snazzy-theme base16-atelier-lakeside-theme base16-atelier-forest-theme base16-material-lighter-theme base16-theme base16-outrun-dark-theme base16-irblack-theme base16-heetch-theme base16-phd-theme base16-harmonic-light-theme base16-cupcake-theme base16-nord-theme base16-ocean-theme base16-pico-theme base16-default-dark-theme base16-atelier-lakeside-light-theme base16-material-palenight-theme base16-codeschool-theme base16-bespin-theme base16-atlas-theme base16-monokai-theme base16-atelier-savanna-theme base16-paraiso-theme base16-atelier-heath-light-theme base16-gruvbox-dark-pale-theme base16-ia-light-theme base16-3024-theme base16-atelier-dune-light-theme base16-circus-theme base16-horizon-dark-theme base16-onedark-theme base16-black-metal-burzum-theme base16-chalk-theme base16-theme-autoloads base16-macintosh-theme base16-brewer-theme base16-woodland-theme base16-atelier-heath-theme base16-atelier-estuary-theme base16-atelier-seaside-light-theme base16-black-metal-theme base16-gruvbox-dark-hard-theme base16-black-metal-khold-theme base16-mellow-purple-theme base16-spacemacs-theme base16-github-theme base16-gruvbox-dark-medium-theme base16-atelier-forest-light-theme base16-icy-theme base16-one-light-theme base16-tube-theme base16-unikitty-light-theme base16-material-vivid-theme base16-brushtrees-theme base16-atelier-dune-theme base16-default-light-theme base16-materia-theme base16-cupertino-theme base16-twilight-theme base16-gruvbox-light-soft-theme base16-mocha-theme base16-theme-pkg base16-dracula-theme base16-black-metal-bathory-theme base16-atelier-sulphurpool-light-theme base16-hopscotch-theme base16-atelier-cave-light-theme base16-harmonic-dark-theme base16-apathy-theme base16-grayscale-light-theme base16-atelier-seaside-theme base16-gruvbox-light-hard-theme base16-unikitty-dark-theme base16-gruvbox-dark-soft-theme base16-papercolor-dark-theme base16-brogrammer-theme base16-atelier-plateau-light-theme base16-black-metal-venom-theme base16-grayscale-dark-theme base16-solarflare-theme base16-greenscreen-theme base16-solarized-dark-theme base16-fruit-soda-theme base16-synth-midnight-dark-theme base16-embers-theme base16-helios-theme base16-seti-theme base16-atelier-plateau-theme base16-black-metal-dark-funeral-theme) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-3024-theme" (quote ("base16-3024-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-apathy-theme" (quote ("base16-apathy-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-ashes-theme" (quote ("base16-ashes-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-atelier-cave-light-theme" (quote ("base16-atelier-cave-light-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-atelier-cave-theme" (quote ("base16-atelier-cave-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-atelier-dune-light-theme" (quote ("base16-atelier-dune-light-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-atelier-dune-theme" (quote ("base16-atelier-dune-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-atelier-estuary-light-theme" (quote ("base16-atelier-estuary-light-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-atelier-estuary-theme" (quote ("base16-atelier-estuary-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-atelier-forest-light-theme" (quote ("base16-atelier-forest-light-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-atelier-forest-theme" (quote ("base16-atelier-forest-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-atelier-heath-light-theme" (quote ("base16-atelier-heath-light-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-atelier-heath-theme" (quote ("base16-atelier-heath-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-atelier-lakeside-light-theme" (quote ("base16-atelier-lakeside-light-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-atelier-lakeside-theme" (quote ("base16-atelier-lakeside-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-atelier-plateau-light-theme" (quote ("base16-atelier-plateau-light-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-atelier-plateau-theme" (quote ("base16-atelier-plateau-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-atelier-savanna-light-theme" (quote ("base16-atelier-savanna-light-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-atelier-savanna-theme" (quote ("base16-atelier-savanna-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-atelier-seaside-light-theme" (quote ("base16-atelier-seaside-light-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-atelier-seaside-theme" (quote ("base16-atelier-seaside-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-atelier-sulphurpool-light-theme" (quote ("base16-atelier-sulphurpool-light-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-atelier-sulphurpool-theme" (quote ("base16-atelier-sulphurpool-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-atlas-theme" (quote ("base16-atlas-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-bespin-theme" (quote ("base16-bespin-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-black-metal-bathory-theme" (quote ("base16-black-metal-bathory-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-black-metal-burzum-theme" (quote ("base16-black-metal-burzum-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-black-metal-dark-funeral-theme" (quote ("base16-black-metal-dark-funeral-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-black-metal-gorgoroth-theme" (quote ("base16-black-metal-gorgoroth-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-black-metal-immortal-theme" (quote ("base16-black-metal-immortal-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-black-metal-khold-theme" (quote ("base16-black-metal-khold-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-black-metal-marduk-theme" (quote ("base16-black-metal-marduk-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-black-metal-mayhem-theme" (quote ("base16-black-metal-mayhem-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-black-metal-nile-theme" (quote ("base16-black-metal-nile-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-black-metal-theme" (quote ("base16-black-metal-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-black-metal-venom-theme" (quote ("base16-black-metal-venom-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-brewer-theme" (quote ("base16-brewer-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-bright-theme" (quote ("base16-bright-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-brogrammer-theme" (quote ("base16-brogrammer-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-brushtrees-dark-theme" (quote ("base16-brushtrees-dark-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-brushtrees-theme" (quote ("base16-brushtrees-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-chalk-theme" (quote ("base16-chalk-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-circus-theme" (quote ("base16-circus-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-classic-dark-theme" (quote ("base16-classic-dark-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-classic-light-theme" (quote ("base16-classic-light-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-codeschool-theme" (quote ("base16-codeschool-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-cupcake-theme" (quote ("base16-cupcake-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-cupertino-theme" (quote ("base16-cupertino-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-darktooth-theme" (quote ("base16-darktooth-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-default-dark-theme" (quote ("base16-default-dark-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-default-light-theme" (quote ("base16-default-light-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-dracula-theme" (quote ("base16-dracula-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-eighties-theme" (quote ("base16-eighties-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-embers-theme" (quote ("base16-embers-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-flat-theme" (quote ("base16-flat-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-fruit-soda-theme" (quote ("base16-fruit-soda-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-github-theme" (quote ("base16-github-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-google-dark-theme" (quote ("base16-google-dark-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-google-light-theme" (quote ("base16-google-light-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-grayscale-dark-theme" (quote ("base16-grayscale-dark-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-grayscale-light-theme" (quote ("base16-grayscale-light-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-greenscreen-theme" (quote ("base16-greenscreen-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-gruvbox-dark-hard-theme" (quote ("base16-gruvbox-dark-hard-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-gruvbox-dark-medium-theme" (quote ("base16-gruvbox-dark-medium-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-gruvbox-dark-pale-theme" (quote ("base16-gruvbox-dark-pale-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-gruvbox-dark-soft-theme" (quote ("base16-gruvbox-dark-soft-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-gruvbox-light-hard-theme" (quote ("base16-gruvbox-light-hard-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-gruvbox-light-medium-theme" (quote ("base16-gruvbox-light-medium-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-gruvbox-light-soft-theme" (quote ("base16-gruvbox-light-soft-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-harmonic-dark-theme" (quote ("base16-harmonic-dark-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-harmonic-light-theme" (quote ("base16-harmonic-light-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-heetch-light-theme" (quote ("base16-heetch-light-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-heetch-theme" (quote ("base16-heetch-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-helios-theme" (quote ("base16-helios-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-hopscotch-theme" (quote ("base16-hopscotch-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-horizon-dark-theme" (quote ("base16-horizon-dark-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-ia-dark-theme" (quote ("base16-ia-dark-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-ia-light-theme" (quote ("base16-ia-light-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-icy-theme" (quote ("base16-icy-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-irblack-theme" (quote ("base16-irblack-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-isotope-theme" (quote ("base16-isotope-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-macintosh-theme" (quote ("base16-macintosh-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-marrakesh-theme" (quote ("base16-marrakesh-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-materia-theme" (quote ("base16-materia-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-material-darker-theme" (quote ("base16-material-darker-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-material-lighter-theme" (quote ("base16-material-lighter-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-material-palenight-theme" (quote ("base16-material-palenight-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-material-theme" (quote ("base16-material-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-material-vivid-theme" (quote ("base16-material-vivid-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-mellow-purple-theme" (quote ("base16-mellow-purple-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-mexico-light-theme" (quote ("base16-mexico-light-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-mocha-theme" (quote ("base16-mocha-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-monokai-theme" (quote ("base16-monokai-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-nord-theme" (quote ("base16-nord-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-ocean-theme" (quote ("base16-ocean-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-oceanicnext-theme" (quote ("base16-oceanicnext-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-one-light-theme" (quote ("base16-one-light-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-onedark-theme" (quote ("base16-onedark-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-outrun-dark-theme" (quote ("base16-outrun-dark-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-papercolor-dark-theme" (quote ("base16-papercolor-dark-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-papercolor-light-theme" (quote ("base16-papercolor-light-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-paraiso-theme" (quote ("base16-paraiso-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-phd-theme" (quote ("base16-phd-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-pico-theme" (quote ("base16-pico-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-pop-theme" (quote ("base16-pop-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-porple-theme" (quote ("base16-porple-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-railscasts-theme" (quote ("base16-railscasts-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-rebecca-theme" (quote ("base16-rebecca-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-seti-theme" (quote ("base16-seti-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-shapeshifter-theme" (quote ("base16-shapeshifter-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-snazzy-theme" (quote ("base16-snazzy-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-solarflare-theme" (quote ("base16-solarflare-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-solarized-dark-theme" (quote ("base16-solarized-dark-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-solarized-light-theme" (quote ("base16-solarized-light-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-spacemacs-theme" (quote ("base16-spacemacs-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-summerfruit-dark-theme" (quote ("base16-summerfruit-dark-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-summerfruit-light-theme" (quote ("base16-summerfruit-light-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-synth-midnight-dark-theme" (quote ("base16-synth-midnight-dark-colors")))) (and load-file-name (boundp (quote custom-theme-load-path)) (add-to-list (quote custom-theme-load-path) (file-name-as-directory (file-name-directory load-file-name)))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-theme" (quote ("base16-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-tomorrow-night-theme" (quote ("base16-tomorrow-night-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-tomorrow-theme" (quote ("base16-tomorrow-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-tube-theme" (quote ("base16-tube-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-twilight-theme" (quote ("base16-twilight-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-unikitty-dark-theme" (quote ("base16-unikitty-dark-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-unikitty-light-theme" (quote ("base16-unikitty-light-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-woodland-theme" (quote ("base16-woodland-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-xcode-dusk-theme" (quote ("base16-xcode-dusk-colors")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "base16-zenburn-theme" (quote ("base16-zenburn-colors")))) (provide (quote base16-theme-autoloads))) "better-defaults" ((better-defaults))))

#s(hash-table size 65 test eq rehash-size 1.5 rehash-threshold 0.8125 data (org-elpa #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 1 "license" nil "use-package" nil "bind-key" nil "smex" nil "pdf-tools" nil "tablist" nil "let-alist" nil "auctex" nil "cl-lib" nil "transpose-frame" nil "smooth-scrolling" nil "frames-only-mode" nil "dash" nil "s" nil "nix-mode" nil "haskell-mode" nil "sudo-edit" nil "base16-theme" nil "better-defaults" nil)) melpa #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 2 "license" nil "use-package" (use-package :type git :flavor melpa :files (:defaults (:exclude "bind-key.el" "bind-chord.el" "use-package-chords.el" "use-package-ensure-system-package.el") "use-package-pkg.el") :host github :repo "jwiegley/use-package") "bind-key" (bind-key :type git :flavor melpa :files ("bind-key.el" "bind-key-pkg.el") :host github :repo "jwiegley/use-package") "smex" (smex :type git :flavor melpa :host github :repo "nonsequitur/smex") "pdf-tools" (pdf-tools :type git :flavor melpa :files ("lisp/*.el" "README" ("build" "Makefile") ("build" "server") (:exclude "lisp/tablist.el" "lisp/tablist-filter.el") "pdf-tools-pkg.el") :host github :repo "politza/pdf-tools") "tablist" (tablist :type git :flavor melpa :host github :repo "politza/tablist") "let-alist" nil "auctex" nil "cl-lib" nil "transpose-frame" (transpose-frame :type git :flavor melpa :host github :repo "emacsorphanage/transpose-frame") "smooth-scrolling" (smooth-scrolling :type git :flavor melpa :host github :repo "aspiers/smooth-scrolling") "frames-only-mode" (frames-only-mode :type git :flavor melpa :host github :repo "davidshepherd7/frames-only-mode") "dash" (dash :type git :flavor melpa :files ("dash.el" "dash-pkg.el") :host github :repo "magnars/dash.el") "s" (s :type git :flavor melpa :files ("s.el" "s-pkg.el") :host github :repo "magnars/s.el") "nix-mode" (nix-mode :type git :flavor melpa :files (:defaults (:exclude "nix-company.el" "nix-mode-mmm.el") "nix-mode-pkg.el") :host github :repo "NixOS/nix-mode") "haskell-mode" (haskell-mode :type git :flavor melpa :files (:defaults "NEWS" "logo.svg" "haskell-mode-pkg.el") :host github :repo "haskell/haskell-mode") "sudo-edit" (sudo-edit :type git :flavor melpa :host github :repo "nflath/sudo-edit") "base16-theme" (base16-theme :type git :flavor melpa :files (:defaults "build/*.el" "base16-theme-pkg.el") :host github :repo "belak/base16-emacs") "better-defaults" (better-defaults :type git :flavor melpa :host github :repo "technomancy/better-defaults"))) gnu-elpa-mirror #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 1 "license" nil "let-alist" (let-alist :type git :host github :repo "emacs-straight/let-alist") "auctex" (auctex :type git :host github :repo "emacs-straight/auctex") "cl-lib" (cl-lib :type git :host github :repo "emacs-straight/cl-lib"))) emacsmirror #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 1 "license" (license :type git :host github :repo "emacsattic/license")))))

("org-elpa" "melpa" "gnu-elpa-mirror" "emacsmirror" "straight" "emacs" "use-package" "bind-key" "better-defaults" "smex" "pdf-tools" "tablist" "let-alist" "auctex" "cl-lib" "transpose-frame" "smooth-scrolling" "frames-only-mode" "dash" "s" "nix-mode" "haskell-mode" "sudo-edit" "base16-theme")

t
