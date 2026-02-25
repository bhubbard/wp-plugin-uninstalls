-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('disconnect_woocommerce_consumer_key', 'woocommerce_api_enabled', 'disconnect_woocommerce_consumer_secret');

