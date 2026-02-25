-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_wc_gateway_slickpay_settings', 'wc_slickpay_payment_gateways_version', 'active_sitewide_plugins', 'slickpay_deposit', 'slickpay_today', 'slickpay_remaining');

