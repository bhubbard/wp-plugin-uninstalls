-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dppti_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_edit_mode', '_elementor_css', '_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_edit_mode', '_elementor_css', '_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_edit_mode', '_elementor_css', '_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_edit_mode', '_elementor_css', '_elementor_data');

