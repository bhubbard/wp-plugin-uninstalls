<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('woocommerce_modena_slice_settings');
delete_site_option('woocommerce_modena_slice_settings');
delete_option('woocommerce_modena_credit_settings');
delete_site_option('woocommerce_modena_credit_settings');
delete_option('woocommerce_modena_business_leasing_settings');
delete_site_option('woocommerce_modena_business_leasing_settings');
delete_option('woocommerce_modena_click_settings');
delete_site_option('woocommerce_modena_click_settings');
delete_option('modena_plugin_version');
delete_site_option('modena_plugin_version');

