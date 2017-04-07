# Open in Browser Atom.io Package

[![Atom Package](https://img.shields.io/apm/v/open-in-browser.svg)](https://atom.io/packages/open-in-browser)
[![Atom Package Downloads](https://img.shields.io/apm/dm/open-in-browser.svg)](https://atom.io/packages/open-in-browser)
[![Build Status (Linux)](https://travis-ci.org/magbicaleman/open-in-browser.svg?branch=master)](https://travis-ci.org/magbicaleman/open-in-browser)
<!-- [![Build Status (Windows)](https://ci.appveyor.com/api/projects/status/XXXXXXXXX?svg=true)](https://ci.appveyor.com/project/magbicaleman/open-in-browser) -->
[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://github.com/magbicaleman/open-in-browser/blob/master/LICENSE.md)

A very simple Open in Browser Atom.io Package. This allows you to right click
and have a menu that will open the current file in your default program. That
opens that extension. **Files will open in your default browser or
application**.

## v 0.5.0
 - Huge thanks to [ldez](https://github.com/ldez) for the contributions on pull request [#34](https://github.com/magbicaleman/open-in-browser/pull/34) which solves a few issues some users were having.

## v 0.4.7
* "Open In Browser" context menu, from tree view or text editor pane, should be
  functional when nuclide package is installed
* Should Fix
 * [Not compatible with nuclide-file-tree :(](https://github.com/magbicaleman/open-in-browser/issues/29)
 * by @aiboy

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

Replace editor class with `atom-text-editor` tag.
Shortcut was conflicting with meteor developers who use <kbd>Ctrl-Alt-M</kbd> in
Meteor.js packages for Atom, so use <kbd>Ctrl-Alt-Q</kbd> instead.
