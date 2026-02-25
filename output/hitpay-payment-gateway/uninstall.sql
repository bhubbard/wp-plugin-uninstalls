-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_hitpay_settings', 'woocommerce_hitpay_payment_button', 'woocommerce_hitpay_place_order_text', 'woocommerce_hitpay_customize', 'woocommerce_hitpay_style', 'woocommerce_hitpay_enable_pos', 'woocommerce_hitpay_terminal_ids', 'woocommerce_hitpay_cashier_emails', 'woocommerce_hitpay_logfile_prefix');

