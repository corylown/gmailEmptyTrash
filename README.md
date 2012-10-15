gmailEmptyTrash
===============

Ruby script that expunges email from Gmail's trash. Ruby-gmail gem is required.

Can be run from Cron to keep your Trash empty, like so:

0,30    *       *       *       *       /bin/bash -l -c 'ruby pathto/gmailEmptyTrash.rb'