#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'okcrmc_options'
wp option delete 'content_reminder_options'
wp option delete 'cur_options'

# Clear Cron Jobs
wp cron event delete 'okcrmc_send_email_notification'

