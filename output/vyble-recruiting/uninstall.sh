#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blech_theme_jobtexts'

# Clear Cron Jobs
wp cron event delete 'vyble_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'job_vybleid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'job_vybleid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'job_vybleid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'job_vybleid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'job_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'job_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'job_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'job_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'job_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'job_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'job_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'job_status'"
