#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'lh_wayback_machine_single'
wp cron event delete 'lh_wayback_machine_process'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lh_wayback_machine-timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lh_wayback_machine-timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lh_wayback_machine-timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lh_wayback_machine-timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lh_wayback_machine-last_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lh_wayback_machine-last_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lh_wayback_machine-last_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lh_wayback_machine-last_result'"
