#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'menu_image_disable_mobile'
wp option delete 'menu_image_size_1'
wp option delete 'menu_image_size_2'
wp option delete 'menu_image_size_3'
wp option delete 'menu_image_hover'
wp option delete 'wp_menu_image_fa_dismissed'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_hover_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_hover_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_hover_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_hover_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_image_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_image_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_image_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_image_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_image_title_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_image_title_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_image_title_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_image_title_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_image_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_image_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_image_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_image_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_image_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_image_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_image_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_image_icon'"
