-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('w3scelementor_zoho_auth_infos', 'w3scelementor_alltoken_data', 'w3scelementor_refresh_token_data', 'w3sc_elementor_installed', 'w3sc_elementor_version');

