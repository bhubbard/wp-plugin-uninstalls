#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ft_calendar_options'
wp option delete 'ftcalendar_meta'
wp option delete 'ftc_ec3_imported'
wp option delete 'ftcal_show_discount'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_meta'"
wp option delete 'ft_cal_db_version'
wp option delete 'ft_cal_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'external_updates-%'"
wp option delete 'rss_language'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'feature_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'feature_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'feature_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'feature_image'"
