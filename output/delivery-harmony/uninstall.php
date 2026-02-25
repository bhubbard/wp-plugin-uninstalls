<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('say2eat_token');
delete_site_option('say2eat_token');
delete_option('say2eat_delivery_time');
delete_site_option('say2eat_delivery_time');
delete_option('say2eat_week_days');
delete_site_option('say2eat_week_days');
delete_option('say2eat_pickup_time');
delete_site_option('say2eat_pickup_time');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('say2eat_app_id');
delete_site_option('say2eat_app_id');
delete_option('say2eat_plugin_configured');
delete_site_option('say2eat_plugin_configured');
delete_option('say2eat_store_token');
delete_site_option('say2eat_store_token');
delete_option('say2eat_store_config');
delete_site_option('say2eat_store_config');

