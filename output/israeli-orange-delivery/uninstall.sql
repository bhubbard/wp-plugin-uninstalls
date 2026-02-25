-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_iod_seller_company_name', 'wc_iod_api_username', 'wc_iod_api_password', 'wc_iod_api_customer_code', 'wc_iod_seller_company_address_1', 'woocommerce_store_address', 'wc_iod_seller_company_address_2', 'woocommerce_store_address_2', 'wc_iod_seller_company_city', 'woocommerce_store_city', 'wc_iod_seller_company_postcode', 'woocommerce_store_postcode');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wc_iod_delivery_number', '_wc_iod_delivery_branch_code', '_wc_iod_delivery_distrubution_line_code', '_wc_iod_response_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wc_iod_delivery_number', '_wc_iod_delivery_branch_code', '_wc_iod_delivery_distrubution_line_code', '_wc_iod_response_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wc_iod_delivery_number', '_wc_iod_delivery_branch_code', '_wc_iod_delivery_distrubution_line_code', '_wc_iod_response_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wc_iod_delivery_number', '_wc_iod_delivery_branch_code', '_wc_iod_delivery_distrubution_line_code', '_wc_iod_response_data');

