-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_WC_Gateway_Payid19', 'woocommerce_WC_Gateway_Payid19_settings');

