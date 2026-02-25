#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpreplace_options'
wp option delete 'wpreplace_version'
wp option delete 'wpreplace_db_version'

# Clear Cron Jobs
wp cron event delete 'wpreplace_cleanup_old_backups'

