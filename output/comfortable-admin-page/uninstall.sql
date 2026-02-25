-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('comage_detected_dashboard_widgets', 'COMAGE_comfortable_admin_page_settings', 'COMAGE_SETTINGS_FIELD_NAME');
DELETE FROM wp_options WHERE option_name LIKE 'comage_custom_menu_snapshot_%';
DELETE FROM wp_options WHERE option_name LIKE 'comage_detected_custom_menus_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

