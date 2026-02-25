#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sc_settings'

# Clear Cron Jobs
wp cron event delete 'social_charts_cron_hook'

