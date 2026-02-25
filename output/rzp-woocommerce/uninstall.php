<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_hold_stock_minutes');
delete_site_option('woocommerce_hold_stock_minutes');
delete_option('woocommerce_manage_stock');
delete_site_option('woocommerce_manage_stock');
delete_option('woocommerce_wc-razorpay_settings');
delete_site_option('woocommerce_wc-razorpay_settings');
delete_option('rzpwc_plugin_dismiss_rating_notice');
delete_site_option('rzpwc_plugin_dismiss_rating_notice');
delete_option('rzpwc_plugin_no_thanks_rating_notice');
delete_site_option('rzpwc_plugin_no_thanks_rating_notice');
delete_option('rzpwc_plugin_installed_time');
delete_site_option('rzpwc_plugin_installed_time');
delete_option('rzpwc_plugin_dismiss_donate_notice');
delete_site_option('rzpwc_plugin_dismiss_donate_notice');
delete_option('rzpwc_plugin_no_thanks_donate_notice');
delete_site_option('rzpwc_plugin_no_thanks_donate_notice');
delete_option('rzpwc_plugin_dismissed_time');
delete_site_option('rzpwc_plugin_dismissed_time');
delete_option('rzpwc_plugin_dismissed_time_donate');
delete_site_option('rzpwc_plugin_dismissed_time_donate');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_rzp_woocommerce_connect_mode_%', '_site_transient_rzp_woocommerce_connect_mode_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_rzp_woocommerce_refreshing_access_token_%', '_site_transient_rzp_woocommerce_refreshing_access_token_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('rzpwc-admin-notice-on-activation');
delete_site_transient('rzpwc-admin-notice-on-activation');
delete_transient('rzpwc_plugin_deprecate_setting_notice_random_priority');
delete_site_transient('rzpwc_plugin_deprecate_setting_notice_random_priority');

