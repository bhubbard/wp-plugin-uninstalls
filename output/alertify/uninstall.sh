#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alertify_options'

# Clear Cron Jobs
wp cron event delete 'alertify_send_notifications'

