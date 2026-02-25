-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_elementor_data', '_elementor_edit_mode', '_elementor_has_elementor_in_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_elementor_data', '_elementor_edit_mode', '_elementor_has_elementor_in_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_elementor_data', '_elementor_edit_mode', '_elementor_has_elementor_in_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_elementor_data', '_elementor_edit_mode', '_elementor_has_elementor_in_content');

