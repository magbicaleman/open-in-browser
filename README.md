Open in Browser Atom.io Package
===============================

A very simple Open in Browser Atom.io Package. This allows you to right click
and have a menu that will open the current file in your default program. That
opens that extension. HTML files will open in your default browser or
application.

## v 0.4.6
* "Open In Browser" context menu, from tree view or text editor pane, should be
  functional
* Should Fix
 * [Failed to activate the open-in-browser package](https://github.com/magbicaleman/open-in-browser/issues/17)

## v 0.4.5
* Had to apply fixes differently because the pull-request was using outdated version.
* [fix deprecations](https://github.com/andya9/open-in-browser/commit/de3e796bd6f26e3e87c43ac56664b58f7558c93e)
  * by @andya9

## v 0.4.4

* [fixed deprecation of stylesheets folder](https://github.com/magbicaleman/open-in-browser/pull/14)
  * by @andya9

## v 0.4.3

* [Fixes deprecation warnings and some indentations](https://github.com/magbicaleman/open-in-browser/pull/12)
  * by @zimme


## v 0.4.2

* Fixes "Open In Browser" not showing up in the workspace context menu

## v 0.4.0


Update by "MetaMemoryT"

Now able to right click on tree-view and select "Open in browser"

Update by "mesosteros"

Replace editor class with atom-text-editor tag.
Shortcut was conflicting with meteor developers who use Ctrl-Alt-M in
Meteor.js packages for Atom, so use Ctrl-Alt-Q instead.
