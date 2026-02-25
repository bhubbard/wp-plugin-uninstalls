-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('invoiceninja_api_token', 'invoiceninja_api_url', 'invoiceninja_included_roles', 'invoiceninja_match_found', 'invoiceninja_currencies', 'invoiceninja_countries', 'invoiceninja_sync_clients', 'invoiceninja_profile', 'invoiceninja_product_label', 'invoiceninja_products_label', 'invoiceninja_sync_products', 'invoiceninja_product_template', 'invoiceninja_image_template', 'invoiceninja_product_page_id', 'invoiceninja_online_purchases', 'invoiceninja_add_to_cart_label', 'invoiceninja_buy_now_label', 'invoiceninja_checkout_label', 'invoiceninja_out_of_stock_label', 'invoiceninja_product_css', 'invoiceninja_products_css', 'invoiceninja_api_url ');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('price', 'cost', 'tax_name1', 'tax_rate1', 'tax_name2', 'tax_rate2', 'tax_name3', 'tax_rate3', 'tax_id', 'custom_value1', 'custom_value2', 'custom_value3', 'custom_value4', 'product_id', 'max_quantity', 'in_stock_quantity');
DELETE FROM wp_usermeta WHERE meta_key IN ('price', 'cost', 'tax_name1', 'tax_rate1', 'tax_name2', 'tax_rate2', 'tax_name3', 'tax_rate3', 'tax_id', 'custom_value1', 'custom_value2', 'custom_value3', 'custom_value4', 'product_id', 'max_quantity', 'in_stock_quantity');
DELETE FROM wp_termmeta WHERE meta_key IN ('price', 'cost', 'tax_name1', 'tax_rate1', 'tax_name2', 'tax_rate2', 'tax_name3', 'tax_rate3', 'tax_id', 'custom_value1', 'custom_value2', 'custom_value3', 'custom_value4', 'product_id', 'max_quantity', 'in_stock_quantity');
DELETE FROM wp_commentmeta WHERE meta_key IN ('price', 'cost', 'tax_name1', 'tax_rate1', 'tax_name2', 'tax_rate2', 'tax_name3', 'tax_rate3', 'tax_id', 'custom_value1', 'custom_value2', 'custom_value3', 'custom_value4', 'product_id', 'max_quantity', 'in_stock_quantity');

