-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('crypto_plugin_version', 'woocommerce_crypto_pay_settings');

