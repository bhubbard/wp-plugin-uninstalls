-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hubbed_success_install', 'hubbed_api_key', 'hubbed_store_id', 'hubbed_map_key', 'hubbed_key_location', 'hubbed_setting_enable', 'hubbed_button_placement', 'button_option', 'hubbed_button_placement_mini', 'hubbed_visible_for_checkout', 'hubbed_shipping_fee', 'hubbed_cutoff_price', 'hubbed_lower_price', 'hubbed_higher_price', 'woocommerce_checkout_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hubbed_client_id', 'hubbed_consignment_no', '_shipping_company', '_shipping_address_1', '_shipping_city', '_shipping_state', '_shipping_postcode', '_shipping_first_name', '_shipping_last_name', 'hubbed_checkout_address', 'hubbed_enable_address', 'error', 'hubbed_consignment_status', 'hubbed_checkout_hubbedlb', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('hubbed_client_id', 'hubbed_consignment_no', '_shipping_company', '_shipping_address_1', '_shipping_city', '_shipping_state', '_shipping_postcode', '_shipping_first_name', '_shipping_last_name', 'hubbed_checkout_address', 'hubbed_enable_address', 'error', 'hubbed_consignment_status', 'hubbed_checkout_hubbedlb', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('hubbed_client_id', 'hubbed_consignment_no', '_shipping_company', '_shipping_address_1', '_shipping_city', '_shipping_state', '_shipping_postcode', '_shipping_first_name', '_shipping_last_name', 'hubbed_checkout_address', 'hubbed_enable_address', 'error', 'hubbed_consignment_status', 'hubbed_checkout_hubbedlb', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hubbed_client_id', 'hubbed_consignment_no', '_shipping_company', '_shipping_address_1', '_shipping_city', '_shipping_state', '_shipping_postcode', '_shipping_first_name', '_shipping_last_name', 'hubbed_checkout_address', 'hubbed_enable_address', 'error', 'hubbed_consignment_status', 'hubbed_checkout_hubbedlb', 'first_name', 'last_name');

