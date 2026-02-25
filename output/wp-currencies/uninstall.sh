#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_currencies_settings'

# Clear Cron Jobs
wp cron event delete 'wp_currencies_update'

