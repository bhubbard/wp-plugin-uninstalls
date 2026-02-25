#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'baqend'

# Clear Cron Jobs
wp cron event delete 'cron_revalidate_html'
wp cron event delete 'cron_update_speed_kit'

