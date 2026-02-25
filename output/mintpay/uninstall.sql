-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_mintpay_settings', 'mintpay_inst_type', 'mintpay_cashback_value');

