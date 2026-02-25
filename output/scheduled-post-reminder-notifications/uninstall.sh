#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sprn_notification_method'
wp option delete 'sprn_reminder_time'

# Clear Cron Jobs
wp cron event delete 'sprn_send_reminder'

