-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_clearpay_settings', 'woocommerce_clearpay_api_error', 'woocommerce_currency', 'clearpay-admin-activation-notice');

