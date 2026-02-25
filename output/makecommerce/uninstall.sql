-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mk_machines_expires', 'mk_machines_cache', 'mc_shipping_plus_confirmed', 'mc_shipping_plus', 'makecommerce_install_status', 'mk_shop_id', 'mk_test_shop_id', 'mk_api_type', 'mc_parcel_machine_map', 'mc_map_geocoding', 'woocommerce_custom_orders_table_enabled', 'mc_shop_id', 'mc_secret_key', 'mc_public_key', 'mc_test_shop_id', 'mc_test_secret_key', 'mc_test_public_key', 'mc_api_mode', 'mc_instance_id', 'mc_shipping', 'mc_payments', 'mc_credentials_error', 'mc_shop_name', 'mc_banklinks_api_type', 'woocommerce_makecommerce_settings', 'mc_version', 'woocommerce_weight_unit', 'wc_mc_version', 'woocommerce_enable_guest_checkout', 'mk_checkout_sco', 'mk_label_format', 'mc_google_api_key', 'mc_map_geocoding_api_key', 'mk_lpexpress_template', 'woocommerce_store_address', 'woocommerce_store_city', 'woocommerce_store_postcode', 'wc_shipping_method_count', 'timeout_wc_shipping_method_count', 'shipping-transient-version', '_set_parcel_machine_meta_transient', '_update_courier_meta_transient');
DELETE FROM wp_options WHERE option_name LIKE '%shop_id';
DELETE FROM wp_options WHERE option_name LIKE '%public_key';
DELETE FROM wp_options WHERE option_name LIKE '%private_key';
DELETE FROM wp_options WHERE option_name LIKE '%secret_key';
DELETE FROM wp_options WHERE option_name LIKE '%_accept_manual_renewals';
DELETE FROM wp_options WHERE option_name LIKE '%_turn_off_automatic_payments';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_no_parcel_machine', '_shipping_first_name', '_billing_first_name', '_shipping_last_name', '_billing_last_name', '_shipping_address_1', '_shipping_address_2', '_shipping_city', '_shipping_postcode', '_parcel_machine', '_makecommerce_sc_cart_id', 'mc_pay_later_notice_dismissed', '_no_shipping_cost', 'mc_invalid_google_api_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_no_parcel_machine', '_shipping_first_name', '_billing_first_name', '_shipping_last_name', '_billing_last_name', '_shipping_address_1', '_shipping_address_2', '_shipping_city', '_shipping_postcode', '_parcel_machine', '_makecommerce_sc_cart_id', 'mc_pay_later_notice_dismissed', '_no_shipping_cost', 'mc_invalid_google_api_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_no_parcel_machine', '_shipping_first_name', '_billing_first_name', '_shipping_last_name', '_billing_last_name', '_shipping_address_1', '_shipping_address_2', '_shipping_city', '_shipping_postcode', '_parcel_machine', '_makecommerce_sc_cart_id', 'mc_pay_later_notice_dismissed', '_no_shipping_cost', 'mc_invalid_google_api_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_no_parcel_machine', '_shipping_first_name', '_billing_first_name', '_shipping_last_name', '_billing_last_name', '_shipping_address_1', '_shipping_address_2', '_shipping_city', '_shipping_postcode', '_parcel_machine', '_makecommerce_sc_cart_id', 'mc_pay_later_notice_dismissed', '_no_shipping_cost', 'mc_invalid_google_api_key');

