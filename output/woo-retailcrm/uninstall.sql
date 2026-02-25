-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('retailcrm_integration_payments', 'woocommerce_enable_signup_and_login_from_checkout', 'retailcrm_active_in_crm', 'woocommerce_enable_coupons', 'retailcrm_client_id', 'retailcrm_customers_history_since_id', 'retailcrm_orders_history_since_id', 'woocommerce_shipping_tax_class');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_attributes', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_attributes', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_attributes', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_attributes', 'thumbnail_id');

