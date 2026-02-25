#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'pgcu_migration'
wp option delete 'pgcu_dismiss_notice'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pgcu_post_views_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pgcu_post_views_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pgcu_post_views_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pgcu_post_views_count'"
