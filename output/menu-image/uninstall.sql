-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'menu_image_disable_mobile', 'menu_image_size_1', 'menu_image_size_2', 'menu_image_size_3', 'menu_image_hover', 'wp_menu_image_fa_dismissed', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_hover_id', '_menu_item_image_size', '_menu_item_image_title_position', '_menu_item_image_type', '_wp_attachment_image_alt', '_menu_image_icon');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_hover_id', '_menu_item_image_size', '_menu_item_image_title_position', '_menu_item_image_type', '_wp_attachment_image_alt', '_menu_image_icon');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_hover_id', '_menu_item_image_size', '_menu_item_image_title_position', '_menu_item_image_type', '_wp_attachment_image_alt', '_menu_image_icon');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_hover_id', '_menu_item_image_size', '_menu_item_image_title_position', '_menu_item_image_type', '_wp_attachment_image_alt', '_menu_image_icon');

