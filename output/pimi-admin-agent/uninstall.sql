-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pimi_encryption_key', 'pimi_site_salt', 'pimi_blocked_ips', 'pimi_approval_enabled', 'pimi_approval_threshold', 'pimi_uninstall_delete_data', 'sidebars_widgets', 'wp_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'pimi_csv_file_%';
DELETE FROM wp_options WHERE option_name LIKE 'pimi_csv_import_%';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_edit_mode', '_elementor_template_type', '_elementor_data', '_elementor_version', '_elementor_css', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_edit_mode', '_elementor_template_type', '_elementor_data', '_elementor_version', '_elementor_css', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_edit_mode', '_elementor_template_type', '_elementor_data', '_elementor_version', '_elementor_css', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_edit_mode', '_elementor_template_type', '_elementor_data', '_elementor_version', '_elementor_css', '_wp_attachment_image_alt');

