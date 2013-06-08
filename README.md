Sublime User Settings
=====================

This repository contains my personal Sublime Text 2 User settings. These are for running Windows 7 x32 bit OS, if that even matters. Most of the files can remain in the `/Sublime Text 2/packages/User/` directory, except for **`.bashrc`** which must be moved to the `/User/%username%/` directory of the computer account.

Most of the User settings require specific packages to be installed to work, so that means Package Control must be installed first. To install it for Sublime Text 2 press **`Ctrl`** + **`~`** and run this:
```
import urllib2,os; pf='Package Control.sublime-package'; ipp=sublime.installed_packages_path(); os.makedirs(ipp) if not os.path.exists(ipp) else None; urllib2.install_opener(urllib2.build_opener(urllib2.ProxyHandler())); open(os.path.join(ipp,pf),'wb').write(urllib2.urlopen('http://sublime.wbond.net/'+pf.replace(' ','%20')).read()); print('Please restart Sublime Text to finish installation')
```

# Packages To Install
----------------------

## That have custom User Settings:

 * DetectSyntax
 * FileHistory
 * Gist
 * JsFormat
 * Minifier
 * Sublimelinter
 * JSHint


## All Installed Packages to install as needed:

 * AngularJS
 * AngularJS Snippets
 * AngularJS Attributes Completion
 * AngularJS-sublime-package

 * Backbone.js
 * Lazy Backbone.js
 * Ember.js Snippets

 * SASS
 * Less
 * HTML5
 * Jasmine
 * Nodejs

 * CSS Snippets
 * SASS Snippets

 * JS Snippets
 * JavaScript Snippets
 * StackMob JS Snippets
 * Console API Snippets (JavaScript)
 * JavaScript and jQuery API Completion

 * jQuery
 * jQuery Snippets Pack
 * JavaScriptNext - ES6 Syntax
 * EJS (when necessary)

 * Grunt
 * Gist
 * Git
 * cdnjs
 * JsFormat
 * JavaScript Console

 * BuildMarkdown *(I made using 2 below)
 * MarkdownBuild
 * Markdown Preview

 * JSHint
 * JSHint Inline
 * Sublime-JSHint
 * sublime-jslint
 * SublimeLinter

 * JavaScript Refactor
 * Sublime HTML-Prettify

 * SublimeLog
 * Updater

 ***Note:*** Do NOT install all of these. I do not use them all at the same time, that would be retarded.

 I do maybe less than half in this list, however when I checked the list for what I am using I realized there are tons more
packages available through Package Control in Sublime that sounded worth checking out and maybe better than the one I use.


This repository was put together by: Jared Williams

