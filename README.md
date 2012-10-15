gmailEmptyTrash
===============

Ruby script that expunges email from Gmail's trash using a modified version of ruby-gmail

Can be run from Cron to keep your Trash empty, like so:

0,30    *       *       *       *       /bin/bash -l -c 'ruby pathto/gmailEmptyTrash.rb'
