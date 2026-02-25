#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'regi_fair_settings'

# Clear Cron Jobs
wp cron event delete 'regi_fair_cleanup_cron_hook'

