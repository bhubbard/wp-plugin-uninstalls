-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_zinia_payment_widgets', 'zinia_success_msg', 'zinia_error_msg');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

