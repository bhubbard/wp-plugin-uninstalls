#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'antispam_bee'
wp option delete 'antispambee_db_version'

# Clear Cron Jobs
wp cron event delete 'antispam_bee_daily_cronjob'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'antispam_bee_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'antispam_bee_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'antispam_bee_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'antispam_bee_reason'"
