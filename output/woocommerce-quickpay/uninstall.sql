-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_quickpay_settings', 'woocommerce_thanks_page_id', 'woocommerce_cart_page_id', 'woocommerce_price_decimal_sep', 'woocommerce_price_thousand_sep', 'woocommerce_quickpay_version', 'woocommerce_quickpay_maintenance', 'woocommerce_email_footer_text', 'active_sitewide_plugins', 'woocommerce_myaccount_page_id', '_wcqp_admin_notices', '_wcqp_admin_runtime_errors');
DELETE FROM wp_options WHERE option_name LIKE 'wcqp_transaction_%';

