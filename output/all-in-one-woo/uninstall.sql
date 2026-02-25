-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('allinonewoo-group');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('all_in_one_new_tab', '_shipping_phone', '_billing_name_one', 'billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_address_2', 'billing_company', 'billing_city', 'billing_postcode', 'billing_phone', 'billing_country', 'billing_state');
DELETE FROM wp_usermeta WHERE meta_key IN ('all_in_one_new_tab', '_shipping_phone', '_billing_name_one', 'billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_address_2', 'billing_company', 'billing_city', 'billing_postcode', 'billing_phone', 'billing_country', 'billing_state');
DELETE FROM wp_termmeta WHERE meta_key IN ('all_in_one_new_tab', '_shipping_phone', '_billing_name_one', 'billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_address_2', 'billing_company', 'billing_city', 'billing_postcode', 'billing_phone', 'billing_country', 'billing_state');
DELETE FROM wp_commentmeta WHERE meta_key IN ('all_in_one_new_tab', '_shipping_phone', '_billing_name_one', 'billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_address_2', 'billing_company', 'billing_city', 'billing_postcode', 'billing_phone', 'billing_country', 'billing_state');

