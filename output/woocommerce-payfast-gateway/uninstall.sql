-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_payfast_settings', 'woocommerce_payfast_invalid_credentials', 'wc-gateway-payfast-admin-notice-transient');

