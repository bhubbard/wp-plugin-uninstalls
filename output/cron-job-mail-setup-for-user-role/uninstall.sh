#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cjmailerTo'
wp option delete 'cjmailerSubject'
wp option delete 'cjmailerBody'
wp option delete 'cjmailerUser'
wp option delete 'default_post_edit_rows'
wp option delete 'cjmailerto'

# Clear Cron Jobs
wp cron event delete 'CJMailSchdule'

