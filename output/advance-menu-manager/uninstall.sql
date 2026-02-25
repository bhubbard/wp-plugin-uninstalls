-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'amm_post_perpage_default', 'amm_post_perpage_option', 'nav_menu_options', 'dsamm_where_hear_about_us', 'dsamm_data_submited_in_sendiblue', '_welcome_screen_activation_redirect_data', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'amm_%';
DELETE FROM wp_options WHERE option_name LIKE 'menu_lock_status_%';
DELETE FROM wp_options WHERE option_name LIKE 'amm_user_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'nav_menu_recently_edited', '_menu_item_type', '_menu_item_menu_item_parent', '_menu_item_object_id', '_menu_item_object', '_menu_item_target');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'nav_menu_recently_edited', '_menu_item_type', '_menu_item_menu_item_parent', '_menu_item_object_id', '_menu_item_object', '_menu_item_target');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'nav_menu_recently_edited', '_menu_item_type', '_menu_item_menu_item_parent', '_menu_item_object_id', '_menu_item_object', '_menu_item_target');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'nav_menu_recently_edited', '_menu_item_type', '_menu_item_menu_item_parent', '_menu_item_object_id', '_menu_item_object', '_menu_item_target');

