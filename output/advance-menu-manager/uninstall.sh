#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'amm_%'"
wp option delete 'amm_post_perpage_default'
wp option delete 'amm_post_perpage_option'
wp option delete 'nav_menu_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'menu_lock_status_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'amm_user_%'"
wp option delete 'dsamm_where_hear_about_us'
wp option delete 'dsamm_data_submited_in_sendiblue'

# Delete Transients
wp transient delete '_welcome_screen_activation_redirect_data'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nav_menu_recently_edited'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nav_menu_recently_edited'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nav_menu_recently_edited'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nav_menu_recently_edited'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_target'"
