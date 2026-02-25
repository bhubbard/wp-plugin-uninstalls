-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_scanpay_version', 'woocommerce_scanpay_settings', 'woocommerce_scanpay_mobilepay_settings', 'woocommerce_scanpay_applepay_settings', 'wc_scanpay_updating');
DELETE FROM wp_options WHERE option_name LIKE '%_needs_processing';

