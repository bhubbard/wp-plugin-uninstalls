-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mosparo-integration-network-configuration', 'mosparo-integration-configuration', 'evf_validation_error', 'woocommerce_registration_generate_username');

