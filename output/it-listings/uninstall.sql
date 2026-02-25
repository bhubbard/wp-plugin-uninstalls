-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('indi_demo_importer_activated_id', 'sidebars_widgets', 'indi_demo_importer_packages');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('title', '_menu_item_url', '_wp_attachment_is_custom_header', '_menu_item_menu_item_parent', '_thumbnail_id', 'for');
DELETE FROM wp_usermeta WHERE meta_key IN ('title', '_menu_item_url', '_wp_attachment_is_custom_header', '_menu_item_menu_item_parent', '_thumbnail_id', 'for');
DELETE FROM wp_termmeta WHERE meta_key IN ('title', '_menu_item_url', '_wp_attachment_is_custom_header', '_menu_item_menu_item_parent', '_thumbnail_id', 'for');
DELETE FROM wp_commentmeta WHERE meta_key IN ('title', '_menu_item_url', '_wp_attachment_is_custom_header', '_menu_item_menu_item_parent', '_thumbnail_id', 'for');

