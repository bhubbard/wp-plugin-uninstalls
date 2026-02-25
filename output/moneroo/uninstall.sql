-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('moneroo_wc_webhook_secret', 'woocommerce_force_ssl_checkout');

