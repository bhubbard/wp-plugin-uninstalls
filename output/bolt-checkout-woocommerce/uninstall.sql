-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_registration_generate_password', 'woocommerce_myaccount_page_id', 'woocommerce_enable_guest_checkout', 'woocommerce_hold_stock_minutes', 'bolt_should_delete_historic_session', 'bolt_delete_historic_session_time_to_delete', 'delete_bolt_quick_buy_product_resources', 'delete_bolt_resources_registered_time', 'delete_bolt_resources_time', 'delete_bolt_session_data_resources', 'delete_bolt_session_posteddata_resources', 'delete_bolt_shipping_and_tax_resources', 'has_initiated_clearing_historic_bolt_resources', 'bolt_load_test', 'woocommerce_bolt_checkout_version', 'woocommerce_tax_round_at_subtotal', 'routeapp_public_token', 'routeapp_secret_token', 'woocommerce_shipping_tax_class', 'woocommerce_enable_shipping_calc', 'advanced_woo_discount_rules_load_version', 'enable_woocommerce_extra_shipping_options', 'woocommerce_smart_coupon_apply_before_tax', 'wc_bolt_checkout_installing');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_shipping_option_conditions', 'sa_cbl_locations_lookup_in');
DELETE FROM wp_usermeta WHERE meta_key IN ('_shipping_option_conditions', 'sa_cbl_locations_lookup_in');
DELETE FROM wp_termmeta WHERE meta_key IN ('_shipping_option_conditions', 'sa_cbl_locations_lookup_in');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_shipping_option_conditions', 'sa_cbl_locations_lookup_in');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_locations';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_locations';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_locations';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_locations';

