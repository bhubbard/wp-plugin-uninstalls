<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_myfatoorah_shipping_settings');
delete_site_option('woocommerce_myfatoorah_shipping_settings');
delete_option('woocommerce_myfatoorah_v2_settings');
delete_site_option('woocommerce_myfatoorah_v2_settings');
delete_option('woocommerce_myfatoorah_embedded_settings');
delete_site_option('woocommerce_myfatoorah_embedded_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_hold_stock_minutes');
delete_site_option('woocommerce_hold_stock_minutes');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');

// Clear Cron Jobs
wp_clear_scheduled_hook('myfatoorah_backup_log_files');

