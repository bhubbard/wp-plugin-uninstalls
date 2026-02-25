<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('en_uvs_enable_logs');
delete_site_option('en_uvs_enable_logs');
delete_option('en_fdo_company_id');
delete_site_option('en_fdo_company_id');
delete_option('en_fdo_company_id_status');
delete_site_option('en_fdo_company_id_status');
delete_option('uvs_small_licence_key');
delete_site_option('uvs_small_licence_key');
delete_option('uvs_backup_rates_category');
delete_site_option('uvs_backup_rates_category');
delete_option('uvs_backup_rates_display');
delete_site_option('uvs_backup_rates_display');
delete_option('en_uvs_plan_number');
delete_site_option('en_uvs_plan_number');
delete_option('en_uvs_plan_message');
delete_site_option('en_uvs_plan_message');
delete_option('en_weight_threshold_lfq');
delete_site_option('en_weight_threshold_lfq');
delete_option('en_quote_settings_return_ltl_rates_uvs');
delete_site_option('en_quote_settings_return_ltl_rates_uvs');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('en_uvs_plan_expire_days');
delete_site_option('en_uvs_plan_expire_days');
delete_option('en_uvs_plan_expire_date');
delete_site_option('en_uvs_plan_expire_date');
delete_option('en_uvs_store_type');
delete_site_option('en_uvs_store_type');
delete_option('eniture_show_rate_limit_notice_with_time');
delete_site_option('eniture_show_rate_limit_notice_with_time');
delete_option('eniture_rate_limit_reset_timestamp');
delete_site_option('eniture_rate_limit_reset_timestamp');
delete_option('uvs_backup_rates_fixed_rate');
delete_site_option('uvs_backup_rates_fixed_rate');
delete_option('uvs_backup_rates_cart_price_percentage');
delete_site_option('uvs_backup_rates_cart_price_percentage');
delete_option('uvs_backup_rates_weight_function');
delete_site_option('uvs_backup_rates_weight_function');
delete_option('en_uvs_transit_days');
delete_site_option('en_uvs_transit_days');
delete_option('enable_backup_rates_uvs');
delete_site_option('enable_backup_rates_uvs');
delete_option('EN_Plugins');
delete_site_option('EN_Plugins');
delete_option('en_uvs_allow_other_plugin_quotes');
delete_site_option('en_uvs_allow_other_plugin_quotes');
delete_option('eniture_show_rate_limit_notice_without_time');
delete_site_option('eniture_show_rate_limit_notice_without_time');
delete_option('en_uvs_small_update_now');
delete_site_option('en_uvs_small_update_now');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'en_uvs_markup_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('en_orders_ids_flag');
delete_site_option('en_orders_ids_flag');
delete_option('en_async_orders_exporting_process');
delete_site_option('en_async_orders_exporting_process');
delete_option('en_orders_ids');
delete_site_option('en_orders_ids');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_shipment' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('en_delivery_estimate_options_uvs');
delete_site_option('en_delivery_estimate_options_uvs');
delete_option('en_uvs_cutt_off_time');
delete_site_option('en_uvs_cutt_off_time');
delete_option('en_uvs_fulfilment_offset_days');
delete_site_option('en_uvs_fulfilment_offset_days');
delete_option('en_uvs_transit_day_options');
delete_site_option('en_uvs_transit_day_options');
delete_option('en_uvs_hazardous_material_settings');
delete_site_option('en_uvs_hazardous_material_settings');
delete_option('en_uvs_hazardous_material_settings_ground_fee');
delete_site_option('en_uvs_hazardous_material_settings_ground_fee');
delete_option('en_uvs_hazardous_material_settings_international_fee');
delete_site_option('en_uvs_hazardous_material_settings_international_fee');
delete_option('en_uvs_handling_fee');
delete_site_option('en_uvs_handling_fee');
delete_option('en_uvs_packaging_method_options');
delete_site_option('en_uvs_packaging_method_options');
delete_option('uvs_backup_rates_carrier_returns_error');
delete_site_option('uvs_backup_rates_carrier_returns_error');
delete_option('uvs_backup_rates_carrier_fails_to_return_response');
delete_site_option('uvs_backup_rates_carrier_fails_to_return_response');
delete_option('en_uvs_shipping_methods_do_not_sort_by_price');
delete_site_option('en_uvs_shipping_methods_do_not_sort_by_price');
delete_option('uvs_backup_rates_label');
delete_site_option('uvs_backup_rates_label');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('box_sizing_optimization_mode');
delete_site_option('box_sizing_optimization_mode');

// Clear Cron Jobs
wp_clear_scheduled_hook('en_async_orders_exporting_process');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ltl_freight_variation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ltl_freight_variation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ltl_freight_variation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ltl_freight_variation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ltl_freight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ltl_freight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ltl_freight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ltl_freight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dropship_location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dropship_location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dropship_location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dropship_location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'en_woocommerce_thankyou_done' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'en_woocommerce_thankyou_done' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'en_woocommerce_thankyou_done' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'en_woocommerce_thankyou_done' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_en_insurance_fee' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_en_insurance_fee' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_en_insurance_fee' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_en_insurance_fee' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_en_exempt_ground_transit_restriction' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_en_exempt_ground_transit_restriction' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_en_exempt_ground_transit_restriction' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_en_exempt_ground_transit_restriction' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_enable_dropship' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_enable_dropship' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_enable_dropship' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_enable_dropship' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_en_product_markup_variation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_en_product_markup_variation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_en_product_markup_variation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_en_product_markup_variation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_en_product_markup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_en_product_markup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_en_product_markup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_en_product_markup' ) );

