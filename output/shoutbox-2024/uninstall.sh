#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shoutbox2024_refresh-interval'
wp option delete 'shoutbox2024_default-font-colour'
wp option delete 'shoutbox2024_locale'
wp option delete 'shoutbox2024_cleanup'
wp option delete 'shoutbox2024_pm-background-colour'
wp option delete 'shoutbox2024_new-message-colour'
wp option delete 'shoutbox2024_height'
wp option delete 'shoutbox2024_options'

# Clear Cron Jobs
wp cron event delete 'shoutbox2024_cleanup'

