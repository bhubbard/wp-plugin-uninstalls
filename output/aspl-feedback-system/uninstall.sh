#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'default_temp'
wp option delete 'send_mail_after'
wp option delete 'send_mail_count'
wp option delete 'send_mail_interval'

# Clear Cron Jobs
wp cron event delete 'asplfs_cron'

