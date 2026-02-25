-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('behamics_organic_api_token', 'behamics_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_edit_mode', '_elementor_template_type', '_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_edit_mode', '_elementor_template_type', '_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_edit_mode', '_elementor_template_type', '_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_edit_mode', '_elementor_template_type', '_elementor_data');

