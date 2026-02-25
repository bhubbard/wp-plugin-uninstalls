-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rppbr_api_id', 'rppbr_api_key', 'woocommerce_version', 'rppbr_activation_redirect');

