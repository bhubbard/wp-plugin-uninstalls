-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpbbe_playground_mode', 'wpbbe_demo_list');
DELETE FROM wp_options WHERE option_name LIKE '%__enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_keep_content_notice';
DELETE FROM wp_options WHERE option_name LIKE '%_remove_content_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_menu_item_menu_item_parent', '_thumbnail_id', '_wp_attachment_image_alt', 'wp_persisted_preferences');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_menu_item_menu_item_parent', '_thumbnail_id', '_wp_attachment_image_alt', 'wp_persisted_preferences');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_menu_item_menu_item_parent', '_thumbnail_id', '_wp_attachment_image_alt', 'wp_persisted_preferences');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_menu_item_menu_item_parent', '_thumbnail_id', '_wp_attachment_image_alt', 'wp_persisted_preferences');

