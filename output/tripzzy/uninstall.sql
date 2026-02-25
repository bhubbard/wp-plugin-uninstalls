-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'tz_active_breakpoints', 'wp_rocket_settings', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('metaboxhidden_nav-menus', 'is_guest_note', '_tripzzy_load_saved_cart_after_login', 'tripzzy_last_active', '_wp_attachment_image_alt', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('metaboxhidden_nav-menus', 'is_guest_note', '_tripzzy_load_saved_cart_after_login', 'tripzzy_last_active', '_wp_attachment_image_alt', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('metaboxhidden_nav-menus', 'is_guest_note', '_tripzzy_load_saved_cart_after_login', 'tripzzy_last_active', '_wp_attachment_image_alt', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('metaboxhidden_nav-menus', 'is_guest_note', '_tripzzy_load_saved_cart_after_login', 'tripzzy_last_active', '_wp_attachment_image_alt', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_tripzzy_persistent_cart_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_tripzzy_persistent_cart_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_tripzzy_persistent_cart_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_tripzzy_persistent_cart_%';

