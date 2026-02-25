<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_klarna_payments_settings');
delete_site_option('woocommerce_klarna_payments_settings');
delete_option('kp_has_valid_credentials');
delete_site_option('kp_has_valid_credentials');
delete_option('kp_uuid4');
delete_site_option('kp_uuid4');
delete_option('kp_credentials_error');
delete_site_option('kp_credentials_error');
delete_option('kec_signing_key');
delete_site_option('kec_signing_key');
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('woocommerce_ship_to_destination');
delete_site_option('woocommerce_ship_to_destination');
delete_option('kec_webhook');
delete_site_option('kec_webhook');
delete_option('kp_unavailable_feature_ids');
delete_site_option('kp_unavailable_feature_ids');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('kom_settings');
delete_site_option('kom_settings');
delete_option('woocommerce_kco_settings');
delete_site_option('woocommerce_kco_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'krokedil_support_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_smart_coupon_apply_before_tax');
delete_site_option('woocommerce_smart_coupon_apply_before_tax');
delete_option('krokedil_debuglog_kp');
delete_site_option('krokedil_debuglog_kp');
delete_option('kp_plugin_features');
delete_site_option('kp_plugin_features');
delete_option('klarna_acquiring_partner_key');
delete_site_option('klarna_acquiring_partner_key');

// Delete Transients
delete_transient('klarna_payments_settings_page_config');
delete_site_transient('klarna_payments_settings_page_config');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_shipping_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_shipping_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_shipping_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_shipping_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_kp_check_permalinks_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_kp_check_permalinks_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_kp_check_permalinks_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_kp_check_permalinks_notice' ) );

