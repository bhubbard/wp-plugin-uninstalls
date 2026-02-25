#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'tz_active_breakpoints'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp option delete 'wp_rocket_settings'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metaboxhidden_nav-menus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metaboxhidden_nav-menus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metaboxhidden_nav-menus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metaboxhidden_nav-menus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_guest_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_guest_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_guest_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_guest_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tripzzy_load_saved_cart_after_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tripzzy_load_saved_cart_after_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tripzzy_load_saved_cart_after_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tripzzy_load_saved_cart_after_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_tripzzy_persistent_cart_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_tripzzy_persistent_cart_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_tripzzy_persistent_cart_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_tripzzy_persistent_cart_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tripzzy_last_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tripzzy_last_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tripzzy_last_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tripzzy_last_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
