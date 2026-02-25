-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_force_ssl_checkout', 'wc_fedapay_db_version', 'wc_fedapay_gateway_bootstrap_warning_message', 'wc_fedapay_gateway_bootstrap_warning_message_dismissed');

