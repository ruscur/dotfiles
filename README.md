# ruscur's dotfiles
Personal dotfiles for various things.

Everything in this repository is licensed CC0, no rights reserved.

## .spacemacs

I use spacemacs.  I tend to agree with the people who say that spacemacs
"defeats the purpose" of emacs, giving an out-of-the-box configuration that
distracts from the emacs core of being able to configure everything and 
building the editor that makes sense for you.

However, it is hugely convenient for me.  I started out using emacs before
I tried vim, and I found that I hugely prefer modal editing, yet the
configurability of emacs as well as the ecosystem of plugins made it very
desirable for me.  So, I started using evil-mode, which was great for
editing, but didn't work so great with other modes.  I'm all for tinkering
around and figuring stuff out, but working out bindings for a bunch of
different modes that all make sense, are memorable, and don't conflict?
I'm not smart enough for that.

Spacemacs provides a way for me to use emacs things with vim-like bindings.
It has very sensible defaults for a number of modes and languages that I
care about.  It is aesthetically pleasing by default, and its configuration
is portable by means of the .spacemacs file.  So, I call myself an emacs
user.  In reality, I am some disgusting hybrid: I don't use vim but I use
their bindings, I use emacs but not their bindings, and with some huge
configuration layer that would make purists cry.  Basically, it means
everyone hates me.

My .spacemacs does the following things

 - sets the font to Fira Mono, by far my preferred monospace font.
 - sets the theme to Tomorrow Night Eighties, my preferred theme
 - sets up the Linux kernel C coding style by default
 - sets up KeyChord so that I can exit insert mode with a rapid "kj"
 - enables a lot of layers for languages and emacs-things I like
 
Most of what's in there is there by default.  I add some packages
and some configuration.  I've never been happier with my editor.
