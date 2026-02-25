-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('orderable_ask_review', 'woocommerce_enable_ajax_add_to_cart', 'woocommerce_hide_out_of_stock_items', 'orderable_settings', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_default_country', 'woocommerce_store_postcode', 'woocommerce_allowed_countries', 'woocommerce_specific_allowed_countries', 'orderable_opt_in', '_orderable_db_version', '_orderable_main_location_store_general_services_settings_to_migrate', '_orderable_main_location_store_general_asap_settings_to_migrate', '_orderable_main_location_store_general_open_hours_settings_to_migrate', '_orderable_main_location_store_general_service_hours_pickup_same_settings_to_migrate', '_orderable_main_location_store_general_lead_time_settings_to_migrate', '_orderable_main_location_store_general_preorder_settings_to_migrate', '_orderable_main_location_store_general_calculation_method_settings_to_migrate', '_orderable_main_location_store_general_service_hours_delivery_settings_to_migrate', '_orderable_main_location_store_general_service_hours_pickup_settings_to_migrate', 'wc_points_rewards_variable_product_message', 'wc_points_rewards_single_product_message', 'orderable_version', 'active_sitewide_plugins', 'orderable_creating_database');
DELETE FROM wp_options WHERE option_name LIKE 'orderable_dismissed_notice_%';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_onboard_dismiss_modal';
DELETE FROM wp_options WHERE option_name LIKE '%_onboard_save_modal';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('visibility', 'dismissed_wp_pointers', 'first_name', 'last_name', 'display_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('visibility', 'dismissed_wp_pointers', 'first_name', 'last_name', 'display_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('visibility', 'dismissed_wp_pointers', 'first_name', 'last_name', 'display_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('visibility', 'dismissed_wp_pointers', 'first_name', 'last_name', 'display_name');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice';

