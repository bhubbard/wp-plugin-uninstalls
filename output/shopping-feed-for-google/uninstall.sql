-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_gsf_shop_secret', 'wp_gsf_auth_id', 'wp_gsf_settings_meta', 'woocommerce_api_enabled');

