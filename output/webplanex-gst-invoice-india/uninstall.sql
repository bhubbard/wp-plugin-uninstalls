-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webplanex_gst_b2b_integration', 'webplanex_gst_invoice_btn_account_page_integration', 'webplanex_gst_invoice_btn_email_integration', 'webplanex_gst_b2b_integration_required', 'webplanex_gst_invoice_btn_order_status_integration', 'webplanex_gst_shop_secret', 'woocommerce_default_country', 'woocommerce_store_city', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_postcode', 'woocommerce_currency', 'woocommerce_api_enabled');
DELETE FROM wp_options WHERE option_name LIKE 'webplanex_gst_%';
DELETE FROM wp_options WHERE option_name LIKE '%_notice_dismiss_until';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_company_name', '_gst_number', 'billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('_company_name', '_gst_number', 'billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('_company_name', '_gst_number', 'billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_company_name', '_gst_number', 'billing_phone');

