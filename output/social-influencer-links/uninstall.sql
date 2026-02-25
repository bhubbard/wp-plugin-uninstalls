-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acf_version', 'update_plugins', 'acf_plugin_updates');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');
DELETE FROM wp_usermeta WHERE meta_key IN ('acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');
DELETE FROM wp_termmeta WHERE meta_key IN ('acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');
DELETE FROM wp_commentmeta WHERE meta_key IN ('acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');

