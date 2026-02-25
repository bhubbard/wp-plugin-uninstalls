<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vp_woo_pont_cod_fees');
delete_site_option('vp_woo_pont_cod_fees');
delete_option('woocommerce_vp_pont_settings');
delete_site_option('woocommerce_vp_pont_settings');
delete_option('pickup_location_pickup_locations');
delete_site_option('pickup_location_pickup_locations');
delete_option('vp_woo_pont_home_delivery');
delete_site_option('vp_woo_pont_home_delivery');
delete_option('vp_woo_pont_automations');
delete_site_option('vp_woo_pont_automations');
delete_option('vp_woo_pont_styles');
delete_site_option('vp_woo_pont_styles');
delete_option('vp_woo_pont_custom_icon');
delete_site_option('vp_woo_pont_custom_icon');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'vp_woo_pont_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_webhook_url' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_vp_woo_pont_db_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('vp_woo_pont_enabled_providers');
delete_site_option('vp_woo_pont_enabled_providers');
delete_option('vp_woo_pont_pricing');
delete_site_option('vp_woo_pont_pricing');
delete_option('vp_woo_pont_weight_corrections');
delete_site_option('vp_woo_pont_weight_corrections');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('vp_woo_pont_notes');
delete_site_option('vp_woo_pont_notes');
delete_option('vp_woo_pont_packeta_countries');
delete_site_option('vp_woo_pont_packeta_countries');
delete_option('vp_woo_pont_gls_countries');
delete_site_option('vp_woo_pont_gls_countries');
delete_option('vp_woo_pont_dpd_countries');
delete_site_option('vp_woo_pont_dpd_countries');
delete_option('vp_woo_pont_sameday_countries');
delete_site_option('vp_woo_pont_sameday_countries');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_vp_woo_pont_file_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('_vp_woo_pont_pro_enabled');
delete_site_option('_vp_woo_pont_pro_enabled');
delete_option('vp_woo_pont_packagings');
delete_site_option('vp_woo_pont_packagings');
delete_option('vp_woo_pont_kvikk_courier_details');
delete_site_option('vp_woo_pont_kvikk_courier_details');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_pro_enabled' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_pro_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_pro_meta' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_labels' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_enabled' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('vp_woo_pont_packeta_carriers');
delete_site_option('vp_woo_pont_packeta_carriers');
delete_option('vp_woo_pont_posta_countries');
delete_site_option('vp_woo_pont_posta_countries');
delete_option('vp_woo_pont_pactic_external_providers');
delete_site_option('vp_woo_pont_pactic_external_providers');
delete_option('vp_woo_pont_tracking_automations');
delete_site_option('vp_woo_pont_tracking_automations');
delete_option('vp_woo_pont_points');
delete_site_option('vp_woo_pont_points');
delete_option('woocommerce_feature_custom_order_tables_enabled');
delete_site_option('woocommerce_feature_custom_order_tables_enabled');
delete_option('woocommerce_custom_orders_table_enabled');
delete_site_option('woocommerce_custom_orders_table_enabled');
delete_option('vp_woo_pont_version_number');
delete_site_option('vp_woo_pont_version_number');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'vp_woo_pont_show_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('vp_woo_pont_show_upgrade_notice_400');
delete_site_option('vp_woo_pont_show_upgrade_notice_400');
delete_option('vp_woo_pont_free_shipping');
delete_site_option('vp_woo_pont_free_shipping');
delete_option('woocommerce_vp_pont_settings_old');
delete_site_option('woocommerce_vp_pont_settings_old');
delete_option('vp_woo_pont_cod_disabled');
delete_site_option('vp_woo_pont_cod_disabled');
delete_option('_vp_woo_pont_db_postapont_posta');
delete_site_option('_vp_woo_pont_db_postapont_posta');
delete_option('_vp_woo_pont_walkthrough_finished');
delete_site_option('_vp_woo_pont_walkthrough_finished');
delete_option('woocommerce_pickup_location_settings');
delete_site_option('woocommerce_pickup_location_settings');
delete_option('vp_woo_pont_kvikk_countries');
delete_site_option('vp_woo_pont_kvikk_countries');
delete_option('vp_woo_pont_kvikk_pricing_file');
delete_site_option('vp_woo_pont_kvikk_pricing_file');
delete_option('_vp_woo_pont_hide_kvikk_info_v2');
delete_site_option('_vp_woo_pont_hide_kvikk_info_v2');
delete_option('vp_woo_pont_kvikk_foxpost_type_selected');
delete_site_option('vp_woo_pont_kvikk_foxpost_type_selected');
delete_option('_packeta_pickup_point_carriers');
delete_site_option('_packeta_pickup_point_carriers');
delete_option('_packeta_home_delivery_carriers');
delete_site_option('_packeta_home_delivery_carriers');
delete_option('vp_woo_pont_free_shipping_coupon');
delete_site_option('vp_woo_pont_free_shipping_coupon');
delete_option('vp_woo_pont_custom_title');
delete_site_option('vp_woo_pont_custom_title');
delete_option('vp_woo_pont_show_on_cart');
delete_site_option('vp_woo_pont_show_on_cart');
delete_option('vp_woo_pont_show_open_hours');
delete_site_option('vp_woo_pont_show_open_hours');
delete_option('vp_woo_pont_show_on_change');
delete_site_option('vp_woo_pont_show_on_change');
delete_option('vp_woo_pont_filter_checkbox');
delete_site_option('vp_woo_pont_filter_checkbox');
delete_option('vp_woo_pont_small_icons');
delete_site_option('vp_woo_pont_small_icons');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('vp_woo_pont_custom_button_label');
delete_site_option('vp_woo_pont_custom_button_label');
delete_option('woocommerce_email_base_color');
delete_site_option('woocommerce_email_base_color');

// Delete Transients
delete_transient('vp_woo_pont_csomagpiac_pickup_points');
delete_site_transient('vp_woo_pont_csomagpiac_pickup_points');
delete_transient('vp_woo_pont_kvikk_senders');
delete_site_transient('vp_woo_pont_kvikk_senders');
delete_transient('_vp_woo_pont_posta_access_token');
delete_site_transient('_vp_woo_pont_posta_access_token');
delete_transient('_vp_woo_pont_sameday_access_token');
delete_site_transient('_vp_woo_pont_sameday_access_token');
delete_transient('vp_woo_pont_sameday_pickup_points');
delete_site_transient('vp_woo_pont_sameday_pickup_points');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_vp_woo_pont_point_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_vp_woo_pont_point_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_vp_woo_pont_point_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_vp_woo_pont_point_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vp_woo_pont_packeta_age_verification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vp_woo_pont_packeta_age_verification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vp_woo_pont_packeta_age_verification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vp_woo_pont_packeta_age_verification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shipping_address_1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shipping_address_1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shipping_address_1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shipping_address_1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shipping_address_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shipping_address_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shipping_address_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shipping_address_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shipping_city' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shipping_city' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shipping_city' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shipping_city' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shipping_postcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shipping_postcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shipping_postcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shipping_postcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shipping_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shipping_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shipping_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shipping_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shipping_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shipping_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shipping_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shipping_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vp_woo_pont_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vp_woo_pont_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vp_woo_pont_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vp_woo_pont_admin_notices' ) );

