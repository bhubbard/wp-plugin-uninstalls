#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_transient_health-check-site-status-result'

# Clear Cron Jobs
wp cron event delete 'gdp_install'
wp cron event delete 'gdp_schedule'
wp cron event delete 'wp_site_health_scheduled_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_export_file_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_export_file_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_export_file_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_export_file_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_export_file_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_export_file_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_export_file_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_export_file_path'"
