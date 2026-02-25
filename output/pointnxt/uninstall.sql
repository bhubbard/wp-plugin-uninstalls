-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_pointnxt_consumer_key', 'woocommerce_api_enabled', 'woocommerce_pointnxt_consumer_secret', '_wc_activation_redirect');

