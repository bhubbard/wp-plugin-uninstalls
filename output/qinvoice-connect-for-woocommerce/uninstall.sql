-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcqc_general_settings', 'woocommerce_gateway_order', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%coupon_vat';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('VAT Number', '_orddd_lite_timestamp', '_orddd_pro_timestamp', '_orddd_timestamp', '_order_currency', '_paid_date', '_payment_method_title', '_product_attributes', 'categories', '_sku', '_stock', '_price', '_payment_method');
DELETE FROM wp_usermeta WHERE meta_key IN ('VAT Number', '_orddd_lite_timestamp', '_orddd_pro_timestamp', '_orddd_timestamp', '_order_currency', '_paid_date', '_payment_method_title', '_product_attributes', 'categories', '_sku', '_stock', '_price', '_payment_method');
DELETE FROM wp_termmeta WHERE meta_key IN ('VAT Number', '_orddd_lite_timestamp', '_orddd_pro_timestamp', '_orddd_timestamp', '_order_currency', '_paid_date', '_payment_method_title', '_product_attributes', 'categories', '_sku', '_stock', '_price', '_payment_method');
DELETE FROM wp_commentmeta WHERE meta_key IN ('VAT Number', '_orddd_lite_timestamp', '_orddd_pro_timestamp', '_orddd_timestamp', '_order_currency', '_paid_date', '_payment_method_title', '_product_attributes', 'categories', '_sku', '_stock', '_price', '_payment_method');

