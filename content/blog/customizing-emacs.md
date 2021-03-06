---
title: "Customizing Emacs"
type: "blog"
date: 2014-04-10 18:32:50 +0530
aliases:
    - /blog/2014/04/10/customizing-emacs
description: customize emacs for better and faster development
tags:
    - emacs
---
![](https://lh3.googleusercontent.com/ARlXYE_wnAvftBBl2UEvu-z9SpH-q3lyYNukRnNRwbUnXt6fGTP304OloJ3sJ3pSlMr_9QnPr_RxKamv65BFkEUqUEKB0TftIzNuOaiabipF1DNMYLzYReB_40Qr2TbbDndKYzeY5-MPUNmyzH9xmsuhWxmpywT4U5ayHJo2-dGy1W7wRlY2kY7QtTvneNt4OqGGZlqsSZLYM3WVcVwWFxBeJzPxirItCLPzRoRNPfdZZRy6k31JS65TU3WYW-7hvOcTuoZ6vDJSj2K3HyD73dpJ7YjNUwmJB9tjNzy7bqUXm5ftnuG14qPKs1Gtz1jpAGESfgafhUeLQL1pvDWP-VBQDLIwYaXr-XFTatPTgalAAPNd66J-cJ_J0O1OkF1DM-KM4RjqDhLkMOT9-RM5fkrG5_Rnibw32yJho_cGYTyk7523_CnePswMWjMtmMrTI4zyrsaRYVqBjfRxwznHExq1nAwuR-NSmP2EeeLvPYFP6ZSyMWyZCga2K0LH6J9-Qa8aHdkneuQ9ti6w0QGEJHr9HinsGuWBuALKd2H0ZlPxrwhOdKSyEIaWgq2mkt0vL653PCK4sN5zGZZte3kc7LL3I4WZhlN1oaRsXbIRTJaLEYhQTYj4BrRDS-59IHAwl2Ddf_AzsF9r7c6cKs-A2DQL2QpM2Nb5gU5Ae05pIw=w270-h217-no)

I believe the environment in which one works is directly responsible for one's productivity. It's the reason I think, it's important to choose the right editor, font, etc.
<!--more-->
I used notepad, notepad++ in my Windows days. I have to say I spent a lot of time with notepad++ and it was my favorite at that time. My notepad++ days ended when one of my friends recommended <a title="Sublime Text" href="http://www.sublimetext.com/" target="_blank">Sublime Text</a> to me. It was the best editor I ever had encountered till that time. The most important thing was that 'it was cross-platform'.
### Switching to Emacs
I switched to Emacs mainly because of it's philosophy, as I am willing to put up with a much steeper learning curve if it makes me more productive or more comfortable in general. Now that some time has passed I'm much faster with Emacs than on any other text editor I use (namely Sublime Text, gedit and Vim). The other reason is it's features. Emacs has tonnes of features which are very hard to replicate in other text editors. These may include from Shell mode to IRC-Chat to E-mail to even playing games inside Emacs.
### Things to do after installation

- **[Enable CUA Mode](http://www.emacswiki.org/emacs/CuaMode)**:  This basically enables `Ctrl`+`X`, `Ctrl`+`C`, `Ctrl`+`V`, `Ctrl`+`Z`, `Shift`+`Arrow` keys. Different key-bindings for such commands are sometimes annoying. Easiest way to do it is Options > Use CUA Keys.
- **Hide the Toolbar**: The Toolbar is pretty much useless if you are well versed with the key-bindings. Also it frees up a lot of writing space. You can even disable the Menu Bar (can be accessed by `F10`  from inside Emacs).
- **[Adding Melpa package Archive](http://melpa.milkbox.net)**: This gives you tonnes of packages you won't find on default archives. There are other managers out there like <a href="http://marmalade-repo.org/" target="_blank">Marmalade</a> which you can add too, but I feel that it's not that frequently updated. But nonetheless you can add both of them.
- **Choosing the right theme**: I recommend using a theme which is a bit easy on the eyes such as [Monokai](http://melpa.milkbox.net/packages/monokai-theme-20140310.1330.el), [Zenburn](http://melpa.milkbox.net/packages/zenburn-theme-20140402.547.el") or [Solarized](http://melpa.milkbox.net/packages/solarized-theme-20140409.338.tar) themes. I recommend you install them from the package manager.
- **Choosing the right font**: This is more of a personal choice actually. Any monospace font would do the job. You can refer to [Dan's article](http://hivelogic.com/articles/top-10-programming-fonts) or [Jeff's Blog](http://blog.codinghorror.com/revisiting-programming-fonts) for more details.
- **Making your scroll smooth**: Emacs Scroll will seem a bit weird to some people who are new to it. To remove the jumpy effect of scroll you can add following lines in your .emacs file


```scheme
(setq redisplay-dont-pause t
  scroll-margin 1
  scroll-step 1
  scroll-conservatively 10000
  scroll-preserve-screen-position 1)
```

Well these are some basic customization which should be done by everyone using Emacs. You can add more features to Emacs by simply searching the package archive.

If you're a confused with the basic key-bindings for navigation, you may refer to the [Emacs Wiki page](http://www.emacswiki.org/emacs/EmacsNewbieKeyReference).

Finally, once you really get the hang of Emacs, it's basically like dark magic. Check out some videos on the [Emacs rocks page](http://emacsrocks.com) to see this magic in action.

If you're addicted to vi there's a funny song on GNU's website : ['Addicted to vi'](http://www.gnu.org/fun/jokes/vi.song.html) :stuck_out_tongue:
