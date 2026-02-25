-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seowriting_split_to_elementor', 'seowriting_plugin_name', 'sw_shema_type');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', '_wp_attachment_image_alt');

