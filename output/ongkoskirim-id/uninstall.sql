-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_ongkoskirim-id_settings', 'woocommerce_weight_unit', 'woocommerce_currency');
DELETE FROM wp_options WHERE option_name LIKE '%version_type';
DELETE FROM wp_options WHERE option_name LIKE '%license_key';
DELETE FROM wp_options WHERE option_name LIKE '%license_status';
DELETE FROM wp_options WHERE option_name LIKE '%shipping_company_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%store_city_id';
DELETE FROM wp_options WHERE option_name LIKE '%is_show_weight';
DELETE FROM wp_options WHERE option_name LIKE '%is_unique_code';
DELETE FROM wp_options WHERE option_name LIKE '%unique_code_length';
DELETE FROM wp_options WHERE option_name LIKE '%is_added_cost_enable';
DELETE FROM wp_options WHERE option_name LIKE '%added_cost';
DELETE FROM wp_options WHERE option_name LIKE '%default_weight';
DELETE FROM wp_options WHERE option_name LIKE '%weight_tolerance';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_country', 'billing_state', 'billing_city', 'billing_district', 'shipping_country', 'shipping_state', 'shipping_city', 'shipping_district', '_shipping_city', '_shipping_address_2', 'last_shipping');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_country', 'billing_state', 'billing_city', 'billing_district', 'shipping_country', 'shipping_state', 'shipping_city', 'shipping_district', '_shipping_city', '_shipping_address_2', 'last_shipping');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_country', 'billing_state', 'billing_city', 'billing_district', 'shipping_country', 'shipping_state', 'shipping_city', 'shipping_district', '_shipping_city', '_shipping_address_2', 'last_shipping');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_country', 'billing_state', 'billing_city', 'billing_district', 'shipping_country', 'shipping_state', 'shipping_city', 'shipping_district', '_shipping_city', '_shipping_address_2', 'last_shipping');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_city';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_city';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_city';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_city';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_district';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_district';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_district';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_district';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_address_2';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_address_2';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_address_2';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_address_2';

