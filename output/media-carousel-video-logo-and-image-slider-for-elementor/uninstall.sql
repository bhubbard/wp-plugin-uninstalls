-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wb_mc_custom_css', 'wb_mc_custom_js');
DELETE FROM wp_options WHERE option_name LIKE 'wb_mc_deactivation_reason_%';
DELETE FROM wp_options WHERE option_name LIKE 'wb_mc_deactivation_details_%';
DELETE FROM wp_options WHERE option_name LIKE 'wb_mc_deactivation_email_%';
DELETE FROM wp_options WHERE option_name LIKE 'wb_mc_deactivation_main_reason_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

