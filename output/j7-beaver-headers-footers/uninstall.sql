-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bbp_hft_license_key', 'bbp_hft_license_status', 'bbp_hft_license_status_info', 'bbp_hft_license_authsite', '_fl_builder_user_templates_admin');

