-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nexi_xpay_data_version', 'xpay_npg_available_methods', 'xpay_available_methods', 'xpay_logo_small', 'xpay_logo_large', 'nexi_unique', 'woocommerce_subscriptions_turn_off_automatic_payments');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';

