#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simppovi_post_view_color'
wp option delete 'simppovi_post_view_title_color'
wp option delete 'simppovi_post_view_text'
wp option delete '_transient_simppovi_post_view_keys'
wp option delete '_transient_timeout_simppovi_post_view_keys'
wp option delete 'simppovi_db_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_simppovi_invalid_view_count_%' OR option_name LIKE '_site_transient_simppovi_invalid_view_count_%'"
wp transient delete 'settings_errors'

# Clear Cron Jobs
wp cron event delete 'wp_update_24_hour_counts'
wp cron event delete 'simppovi_daily_reset'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_view'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_view'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_view'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_view'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_post_view'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_post_view'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_post_view'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_post_view'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'view_24_hour_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'view_24_hour_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'view_24_hour_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'view_24_hour_count'"
