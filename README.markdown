Lokka Tweet Button
==================

This is a [Lokka](http://lokka.org) plugin to add ["Facebook Like Button"](http://www.facebook-japan.com/iine.html) link.

Installation
------------

Run these commands:

    $ cd public/plugin
    $ git clone git://github.com/miminashi/lokka-facebook_like_button.git

Usage
-----

You can set options in the admin page [Plugins]->[Tweet Button].

The helper method is "facebook_like_button".  Don't forget to modify the theme template. If the facebook_like_button method called without any parameter, current page URL will be liked. If you want to specify the URL, call the method with String parameter like:

    <%= facebook_like_button("http://example.com/foo/bar/") %>

