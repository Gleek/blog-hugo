---
title: "Drush It!"
date: 2014-07-09 00:54:05 +0530
aliases:
    - /blog/2014/07/09/drush-it
description: My encounter with the drush utility of drupal
---
![Drush](https://lh3.googleusercontent.com/LWK3VdQ8CcrC4bIDnlrJRCJAZpjBDvFg-SnX0lZNu1GXNcKi2j0jA8ubCdBZIoz6hFOBzJmJ75OD2DvGfvxi1sGRY6qdrT4-iwgxAnRZFTOb3OE5-N33y4lEJBMfDhGYWWQAroZ9Wbe2Ho1dy4MI8ZntRVO1DrSyCS8AjMcil_m3UrJhsjz9IqMyMny1sIZ6JSJIfx7Pp6CN_iVgXO9ccpZf_aZC-0MGq8i5VGUTVGoy7asAHBnQPbbZJK4X8WilpFVqPmJAwsNKXoA-9GZasxjG9Kw3HyEK0jN83K3bRYYDYUAqZeLf5fJckpY8NZztQ0EoDGxHjb7UsD_aLYwMQmsg-U5e3ziv7Rs7POTkljWBngT4yMWy6HtCNJhr92xF7OLriyu3VdtRz3m1S_OrPcTOltWa4LlSiwAqVYR0-0JhYu1Ewq4fQvCoTy6ywEBbC7D-eGYk9plS2tiCTSH2WISVGTGZwh0ihUSgjsXSl6EZ22xnXd8zySzczp4WDzeabJfat97e7PFanrQn5Y5sxsiqYpCbbQgJx_bPaZF01xP2UqRLK2lEGiLS23cMlDOTrGCMJDWbRv3-grYVIApMzdw-nOkEmF26YpCTc_WQo-R_8dhBzmTcHKTswD2GadtGOg3LwqZFNwoxCw5TpnKHz9IdwTi9kjn6soBNF8xcjw=w218-h215-no)


In the words of the maintainers of Drush:

>Drush is a command-line shell and scripting interface for Drupal,
>a veritable Swiss Army knife designed to make life easier for those who spend
>their working hours hacking away at the command prompt.

It's just been few weeks I've started using Drush and I'm already a fan.
If you are a drupal developer or a site maintainer and still haven't heard of Drush [go check it out](https://github.com/drush-ops/drush).
<!--more-->
Drush combines the best of shell and drupal to provide a tool which can help you download and install modules and much more anything, without even opening a browser window and within a fraction of time.

Lately I've made some improvements with the way I use drush. Some of them are:

### Using Aliases and Autocompletion

**Aliases** greatly improve the productivity by assigning short names to complex commands and for commands you use a lot and need a shorter version of them.
This can be done by using `alias` builtin. The aliases are normally created inside `.bashrc` or `.bash_profile`.
Some of the aliases I use are:
```bash
alias dr='drush'
alias drcc='drush cache-clear all'
alias drdb='drush updb && drush cc all'
alias dren='drush pm-enable'
alias drdis='drush pm-disable'
```
You may add other aliases depending on the [other commands](http://drush.ws/) you frequently use.


The **Autocompletion** is also another great option [bash](). This option requires you to only partially enter the commands and pressing `TAB` to complete it.

There is already a script for autocompletion on a [drupal issue page](https://www.drupal.org/node/437568) which simply needs to be added in your `/etc/bash_completion.d/` directory.

You might find [this textbook for bash completions](http://www.debian-administration.org/articles/316) helpful if you want a farther insight.

### Using Drush Make
[`drush make`](http://drupal.org/project/drush_make) performs a time taking tasks of assembling Drupal directories for each site or a multi-site base instance

You can create decent make files using [drushmake.me](http://drushmake.me/). It provides options to add some popular or custom modules and themes to your make file.

This  will save you from the hassle of searching for each and every module.
It also gives you a list of some popular modules; some of which you may not have known.

### Porting Databases
Backing up the database is very easy with `drush`. [Backup and migrate module](https://drupal.org/project/backup_migrate) might solve the problem for small sites,
but there are some reported problems of it on large databases. That's where drush comes to the rescue.

You can always run

`mysqldump -u root -p[root_password] [database_name] | gzip > dumpfilename.sql`

but it's easier using drush by just doing

`drush sql-dump --gzip --result-file`

There is also an awesome drush utility - [Drush Sql Sync Pipe](https://www.drupal.org/project/drush_sql_sync_pipe) for importing databases.

You can even install drupal from scratch using
```
drush dl drupal
drush si standard --db-url=mysql://[dbuser]:[dbpass]@localhost/[dbname]
```
with the username and password as *admin* and *admin*.
You can later create login links with `drush uli` which are also great for testing.

You may need to seperately specify `.htaccess` though!

I'm still unaware of most of the functionality drush provides but I hope I'll get the hang of it after some time.
Till then,

Happy Drupaling :smile:
