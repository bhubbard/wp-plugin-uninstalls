#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fbsseop_settings'
wp option delete 'fbs_opt_settings'

# Clear Cron Jobs
wp cron event delete 'fbsseop_cleanup_database'

