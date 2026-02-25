#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'event-scheduler'

# Clear Cron Jobs
wp cron event delete 'event_scheduler_mail_notification'

