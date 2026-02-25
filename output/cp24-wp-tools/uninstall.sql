-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cp24_license_key', 'cp24_license_status', 'cp24_license_data', 'cp24_license_server_url', 'cp24_pro_social_registration', 'cp24_license_valid', 'cp24_license_valid_backup', 'cp24_license_status', 'cp24_license_data', 'cp24_signup_security_log');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cp24_template_type', '_cp24_is_default', '_elementor_template_type', '_elementor_edit_mode', '_elementor_data', '_elementor_version');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cp24_template_type', '_cp24_is_default', '_elementor_template_type', '_elementor_edit_mode', '_elementor_data', '_elementor_version');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cp24_template_type', '_cp24_is_default', '_elementor_template_type', '_elementor_edit_mode', '_elementor_data', '_elementor_version');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cp24_template_type', '_cp24_is_default', '_elementor_template_type', '_elementor_edit_mode', '_elementor_data', '_elementor_version');

