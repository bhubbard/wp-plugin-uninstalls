#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'updatepress_%'"
wp option delete 'updatepress_floating_widget'
wp option delete 'updatepress_floating_widget_delay'
wp option delete 'updatepress_recent_days'
wp option delete 'updatepress_display_rule'
wp option delete 'updatepress_selected_pages'
wp option delete 'updatepress_display_count'
wp option delete 'updatepress_custom_count'
wp option delete 'updatepress_sort_order'
wp option delete 'updatepress_tag_enabled'
wp option delete 'updatepress_tag_text'
wp option delete 'updatepress_tag_color'
wp option delete 'updatepress_widget_position'
wp option delete 'updatepress_private_mode'
wp option delete 'updatepress_uninstall_data'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_count' OR option_name LIKE '_site_transient_%_count'"

# Clear Cron Jobs
wp cron event delete 'updatepress_daily_cleanup'
wp cron event delete 'updatepress_weekly_maintenance'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tag_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tag_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tag_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tag_color'"
