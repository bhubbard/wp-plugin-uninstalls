-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_monetbil_settings', 'MONETBIL_MERCHANT_NAME', 'MONETBIL_MERCHANT_EMAIL', 'MONETBIL_SERVICE_NAME');

