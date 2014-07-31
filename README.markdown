[![Build Status](https://secure.travis-ci.org/rolandwalker/unicode-whitespace.png?branch=master)](http://travis-ci.org/rolandwalker/unicode-whitespace)

# Overview

Teach Emacs whitespace-mode about fancy characters.

![Makefile Example](https://raw.githubusercontent.com/rolandwalker/unicode-whitespace/master/makefile_example.png)

 * [Quickstart](#quickstart)
 * [Explanation](#explanation)
 * [Compatibility and Requirements](#compatibility-and-requirements)

## Quickstart

```elisp
(require 'unicode-whitespace)
 
(unicode-whitespace-setup 'subdued-faces)
 
;; execute M-x whitespace-mode RET
```

## Explanation

Unicode-whitespace makes the built-in `whitespace-mode` Unicode-aware
in two different ways:

1. Recognizing Unicode whitespace characters in your buffer,
   such as "No-Break Space" or "Hair Space".

2. Displaying Unicode characters such as "Paragraph Sign"
   (&#xb6;) in place of whitespace.

This library also makes some minor adjustments to the default
settings of `whitespace-mode`, and exposes character-by-character
display substitution mappings in `customize`.

To use unicode-whitespace, place the `unicode-whitespace.el` library
somewhere Emacs can find it, and add the following to your `~/.emacs`
file:

```elisp
(require 'unicode-whitespace)
(unicode-whitespace-setup 'subdued-faces)  ; 'subdued-faces is optional
```

Then invoke `whitespace-mode` as usual.

The display of newlines is changed from the default.  Newline
indicators are not displayed unless one of the following
conditions is met:

1. `truncate-lines` is non-nil

2. `word-wrap` is non-nil

3. The major mode of the buffer is listed in `unicode-whitespace-newline-mark-modes`.

A new `whitespace-style` is provided: `'echo` causes the name of the
whitespace character under the point to be displayed in the echo
area.  This is not enabled by default.

Two interactive commands are provided to manipulate these settings
when `whitespace-mode` is active:

	unicode-whitespace-toggle-newlines
	unicode-whitespace-toggle-echo

## Compatibility and Requirements

	GNU Emacs version 24.4-devel     : yes, at the time of writing
	GNU Emacs version 24.3           : yes
	GNU Emacs version 23.3           : yes
	GNU Emacs version 22.3 and lower : no

Requires [ucs-utils.el](http://github.com/rolandwalker/ucs-utils)

Uses if present: [unicode-fonts.el](http://github.com/rolandwalker/unicode-fonts)
