-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_paytm_settings', 'woocommerce_checkout_page_id', 'isWebsiteAdded', 'websiteOption', 'woocommerce_pay_page_id', 'woocommerce_custom_orders_table_enabled');

