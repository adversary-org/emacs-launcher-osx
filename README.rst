=======================
Emacs Launcher for OS X
=======================

Launcher app for OS X users of GNU Emacs which inherits all shell paths
and aliases.

----------------
Who is this for?
----------------

Firstly, this is only for OS X users running Emacs.  Other \*nix
environments don't need a hack like this because their graphic
displays generally already inherit user shell settings.  Even GUI only
distributions of Linux (yes, Kubuntu, I'm looking at you) still
essentially start X within a shell, even if the end user never sees
that.  OS X, however, does not do this and always loads the graphic
interface with specific system settings.  These settings are then all
that Emacs inherits when it is run, very often to the annoyance of
Emacs users, who like to customise things.

If all you want is your shell paths (e.g. $PATH) and similar settings
(e.g. $PYTHONPATH) to be inherited by Emacs, then you might be better
served by `exec-path-from-shell.el
<https://github.com/purcell/exec-path-from-shell>`_ which provides
that within Emacs and Emacs Lisp.

If, however, you want more than just the paths, such as aliases or the
loading of additional files (e.g. the Python virtualenv configuration
loaded through the source command), then this might be what you're
after.  Essentially the apps here just run a shell script to launch
Emacs without a Terminal window appearing, but still passing along all
the ~/.bashrc and ~/.bash_profile settings that are active at the time
the application is run.  This means that you will be able to access
all your normal aliases and other settings within an Emacs shell,
eshell or term-mode, just like users on Linux, Solaris and the other
BSDs can.

There really isn't much more to this, the apps themselves are just
wrappers for some very small shell scripts, but made to look like what
OS X expects an application to be.

------------
Installation
------------

These scripts/applications assume that GNU Emacs is installed as
/Applications/Emacs.app/ and not something else.  This will be the
default if you are using `Emacs for Mac OS X
<http://emacsformacosx.com/>`_ or if you configured and compiled it
yourself (e.g. with ./configure --with-ns && make && make install).  I
believe other installers may do this as well, but have not confirmed
them.  Note that the location needs to be precise because the compiled
binary is called at:

/Applications/Emacs.app/Contents/MacOS/Emacs

If this is the case for you then you can simply drag the two app files
into the /Applications folder.  Though I suggest putting them in your
home Applications directory (~/Applications) instead.  Once you run
them the first time uou can elect to have them remain in the dock and
be launched with a single click.

You don't need to specify an init file, Emacs takes care of all of
that as normal, though the sever version launches with the flags to
execute the *server-start* mode.

To launch additional instances of the basic version (EmacsLauncher)
then you need another script or a Terminal, which kind of defeats the
purpose, but it can be done with the following command (assuming the
apps are in ~/Applications rather than /Applications):

open -n ~/Applications/EmacsLauncher.app/

-----------------
Use and Licensing
-----------------

First and foremost, let's be clear, this is a quick and dirty hack.
There's nothing special in it and not likely to be either.  A quick
look at the shell scripts in the MacOS subdirectories ought to be
proof enough of that.  Nevertheless, the entire lot is released under
the GPLv3 so it can be freely bundled with any Emacs distribution at
some point in the future (or better yet, generated at compile time).

Consider the copyright existing for the sole purpose of licensing it
appropriately.

----------------
Acknowledgements
----------------

These apps and files are essentially just an amalgamation `this answer
to a question <http://stackoverflow.com/a/281389/2801707>`_ by `Jeremy
Banks <http://stackoverflow.com/users/1114/jeremy-banks/>`_ and `this
explanation of how to set an icon to an app or folder
<http://stackoverflow.com/a/24073988/2801707>`_ by `sage
<http://stackoverflow.com/users/527489/sage>`_, both of which were
posted on `StackOverflow <http://stackoverflow.com/>`_.

The shell scripts run barely even qualify as scripts, their content is
that brief.  Hell, I've spent more time on this readme file than I did
on creating the scripts and apps, which says it all really ...
