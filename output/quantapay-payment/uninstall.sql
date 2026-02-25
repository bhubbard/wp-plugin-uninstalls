-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_quantapay_settings', 'quantapay-cloud-settings', 'qtp-cloud-settings', 'quantapay_logging_enabled', 'qtp_logging_enabled');

