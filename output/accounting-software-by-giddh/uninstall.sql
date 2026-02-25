-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('giddh_version', 'giddh_notification_email', 'giddh_company_unique_name', 'giddh_shop_unique_name', 'giddh_company_auth_key', 'giddh_save_woocommerce_categories', 'giddh_save_woocommerce_products', 'giddh_save_giddh_products', 'giddh_save_woocommerce_payment_gateways', 'giddh_create_woocommerce_unmatched_to_giddh', 'giddh_create_giddh_unmatched_to_woocommerce', 'giddh_email_method', 'giddh_create_customer_account', 'giddh_create_invoice', 'giddh_sendgrid_api_key', 'woocommerce_currency', 'giddh_shipping_account', 'giddh_shipping_account_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sku');

