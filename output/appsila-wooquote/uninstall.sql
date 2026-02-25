-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ticaretCRMoptions', 'lastCRMoptions', 'ticaretCRMoptions_message', 'temp_datas', 'temp_apikey', 'sendData_single_page', 'sp_info', 'sendData_cart');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_price', '_tax_status', '_tax_class', '_regular_price', '_sale_price', 'billing_company', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('_price', '_tax_status', '_tax_class', '_regular_price', '_sale_price', 'billing_company', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('_price', '_tax_status', '_tax_class', '_regular_price', '_sale_price', 'billing_company', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_price', '_tax_status', '_tax_class', '_regular_price', '_sale_price', 'billing_company', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'billing_phone');

