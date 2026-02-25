<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aw_shipping_wizard_completed');
delete_site_option('aw_shipping_wizard_completed');
delete_option('aw_shipping_wizard_hidden');
delete_site_option('aw_shipping_wizard_hidden');
delete_option('aw_shipping_license');
delete_site_option('aw_shipping_license');
delete_option('aw_shipping_settings');
delete_site_option('aw_shipping_settings');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('aw_shipping_cod_enabled');
delete_site_option('aw_shipping_cod_enabled');
delete_option('aw_shipping_cod_activated_at');
delete_site_option('aw_shipping_cod_activated_at');
delete_option('aw_shipping_kyc_verified');
delete_site_option('aw_shipping_kyc_verified');
delete_option('aw_shipping_kyc_verified_at');
delete_site_option('aw_shipping_kyc_verified_at');
delete_option('aw_shipping_analysis_result');
delete_site_option('aw_shipping_analysis_result');
delete_option('aw_shipping_analysis_timestamp');
delete_site_option('aw_shipping_analysis_timestamp');
delete_option('woocommerce_jne_shipping_license_code');
delete_site_option('woocommerce_jne_shipping_license_code');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings_backup' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_shipping_method_selection_priority');
delete_site_option('woocommerce_shipping_method_selection_priority');
delete_option('woocommerce_jne_shipping_settings');
delete_site_option('woocommerce_jne_shipping_settings');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_transient_timeout_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('aw_shipping_do_activation_redirect');
delete_site_option('aw_shipping_do_activation_redirect');
delete_option('aw_shipping_db_version');
delete_site_option('aw_shipping_db_version');

// Delete Transients
delete_transient('aw_wizard_license_type');
delete_site_transient('aw_wizard_license_type');
delete_transient('aw_wizard_license_error');
delete_site_transient('aw_wizard_license_error');
delete_transient('aw_wizard_config_error');
delete_site_transient('aw_wizard_config_error');
delete_transient('aw_wizard_courier_error');
delete_site_transient('aw_wizard_courier_error');
delete_transient('aw_wizard_services_error');
delete_site_transient('aw_wizard_services_error');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_aw_pending_log_%', '_site_transient_aw_pending_log_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('aw_shipping_kyc_status');
delete_site_transient('aw_shipping_kyc_status');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_aw_pickup_request_%', '_site_transient_aw_pickup_request_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_aw_bulk_awb_orders_%', '_site_transient_aw_bulk_awb_orders_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('aw_shipping_services_domestic');
delete_site_transient('aw_shipping_services_domestic');
delete_transient('aw_shipping_services_instant');
delete_site_transient('aw_shipping_services_instant');
delete_transient('aw_shipping_services_international');
delete_site_transient('aw_shipping_services_international');
delete_transient('aw_shipping_couriers_domestic');
delete_site_transient('aw_shipping_couriers_domestic');
delete_transient('aw_shipping_couriers_instant');
delete_site_transient('aw_shipping_couriers_instant');
delete_transient('aw_shipping_couriers_international');
delete_site_transient('aw_shipping_couriers_international');

// Clear Cron Jobs
wp_clear_scheduled_hook('aw_api_log_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_weight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_weight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_weight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_weight' ) );

