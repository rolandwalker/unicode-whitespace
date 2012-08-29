Overview
========
Teach Emacs whitespace-mode about fancy characters.

![Makefile Example](https://raw.github.com/rolandwalker/unicode-whitespace/master/makefile_example.png)

unicode-whitespace
------------------
Unicode-whitespace makes `whitespace-mode` Unicode-aware in two
different ways:

1. Recognizing Unicode whitespace characters in your buffer,
   such as "No-Break Space" or "Hair Space".

2. Displaying Unicode characters such as "Paragraph Sign"
   (&#xb6;) in place of whitespace.

This library also makes some minor adjustments to the default
settings of `whitespace-mode`, and exposes character-by-character
display substitution mappings in customize.

To use unicode-whitespace, place the unicode-whitespace.el library
somewhere Emacs can find it, and add the following to your ~/.emacs
file:

	(require 'unicode-whitespace)
	(unicode-whitespace-setup 'subdued-faces)  ; 'subdued-faces is optional

Then invoke `whitespace-mode` as usual.

The display of newlines is changed from the default.  Newline
indicators are not displayed unless one of the following
conditions is met:

1. `truncate-lines` is non-nil

2. `word-wrap` is non-nil

3. The major mode of the buffer is listed in `unicode-whitespace-newline-mark-modes`.

A new `whitespace-style` is provided: 'echo causes the name of the
whitespace character under the point to be displayed in the echo
area.  This is not enabled by default.

Two interactive commands are provided to manipulate these settings
when `whitespace-mode` is active:

	unicode-whitespace-toggle-newlines
	unicode-whitespace-toggle-echo

Compatibility and Requirements
------------------------------
Tested only on GNU Emacs version 24.1

Requires ucs-utils.el

Uses if present: unicode-fonts.el
