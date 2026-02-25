-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acf_version', 'wri_general_settings', 'wsl_last_activation_tech_info', 'yarpp', 'wc_pac_columns', 'wri_related_items___product', 'active_sitewide_plugins', 'update_plugins', 'acf_plugin_updates', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'wri_related_items___%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');
DELETE FROM wp_usermeta WHERE meta_key IN ('acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');
DELETE FROM wp_termmeta WHERE meta_key IN ('acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');
DELETE FROM wp_commentmeta WHERE meta_key IN ('acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');

