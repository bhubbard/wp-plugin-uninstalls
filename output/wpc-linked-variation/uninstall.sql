-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpclv_settings', 'wpclv_localization', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpclv_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpclv_linked_products_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpclv_linked_data_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpclv_link', 'wpcvs_button', 'wpcvs_color', 'wpcvs_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpclv_link', 'wpcvs_button', 'wpcvs_color', 'wpcvs_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpclv_link', 'wpcvs_button', 'wpcvs_color', 'wpcvs_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpclv_link', 'wpcvs_button', 'wpcvs_color', 'wpcvs_image');

