-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('1984_woo_dk_api_key', '1984_woo_dk_shipping_sku', '1984_woo_dk_cost_sku', '1984_woo_dk_default_kennitala', '1984_woo_dk_kennitala_classic_field_enabled', '1984_woo_dk_kennitala_block_field_enabled', '1984_woo_dk_default_sales_person_number', '1984_woo_dk_product_price_sync', '1984_woo_dk_product_quantity_sync', '1984_woo_dk_product_name_sync', '1984_woo_dk_email_invoice', '1984_woo_dk_customer_requests_kennitala_invoice', '1984_woo_dk_make_invoice_if_kennitala_is_set', '1984_woo_dk_make_invoice_if_kennitala_is_missing', '1984_woo_dk_dk_currency', '1984_woo_dk_import_nonweb_products', '1984_woo_dk_delete_inactive_products', '1984_woo_dk_domestic_customer_ledger_code', '1984_woo_dk_international_customer_ledger_code', '1984_woo_dk_use_attribute_description', '1984_woo_dk_use_attribute_value_description', '1984_woo_dk_product_convertion_to_variation_enabled', 'woocommerce_default_country', '1984_woo_dk_variations', '1984_woo_dk_attribute_values', '1984_woo_dk_payment_terms', '1984_woo_dk_payment_modes', '1984_woo_dk_payment_methods', '1984_woo_dk_warehouses');
DELETE FROM wp_options WHERE option_name LIKE '1984_woo_dk_payment_method_%';
DELETE FROM wp_options WHERE option_name LIKE '1984_woo_dk_ledger_code_%';
DELETE FROM wp_options WHERE option_name LIKE '1984_woo_dk_currency_rate_%';
DELETE FROM wp_options WHERE option_name LIKE '1984_woo_dk_attribute_%';
DELETE FROM wp_options WHERE option_name LIKE '1984_woo_dk_variation_attributes_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_kennitala');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_kennitala');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_kennitala');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_kennitala');

