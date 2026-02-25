#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wp_wlh_cron_queue'
wp option delete 'wp_wlh_db_version'
wp option delete 'wp_wlh_install'
wp option delete 'wp_wlh_uninstall'

# Clear Cron Jobs
wp cron event delete 'wp_wlh_cron_job'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_wlh_linking_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_wlh_linking_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_wlh_linking_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_wlh_linking_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_wlh_linking_here'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_wlh_linking_here'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_wlh_linking_here'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_wlh_linking_here'"
