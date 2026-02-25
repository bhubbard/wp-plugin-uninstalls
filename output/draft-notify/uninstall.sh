#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'draftnotifyemaillinkspam'
wp option delete 'draftnotifyuserlevel'
wp option delete 'draftnotifyauthorlevel'
wp option delete 'draftnotifyemail'
wp option delete 'draftnotifyemailrevisions'
wp option delete 'draftnotifyposttypes1'
wp option delete 'draftnotifyposttypes2'
wp option delete 'draftnotifyemailedlist'
wp option delete 'draftnotifycustomheader'
wp option delete 'draftnotifyemailpostlink'
wp option delete 'draftnotifyemailauthorname'
wp option delete 'draftnotifyemailauthoremail'
wp option delete 'draftnotifycustomfooter'
wp option delete 'draftnotifyemailfrom'
wp option delete 'draftnotifyemailreply'
wp option delete 'draftnotifyemailsubject'

