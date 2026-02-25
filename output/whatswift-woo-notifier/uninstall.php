<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'snfw_template_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('snfw_api_key');
delete_site_option('snfw_api_key');
delete_option('snfw_auth_key');
delete_site_option('snfw_auth_key');
delete_option('snfw_template_order_placed');
delete_site_option('snfw_template_order_placed');
delete_option('snfw_seller_number');
delete_site_option('snfw_seller_number');
delete_option('snfw_template_seller_alert');
delete_site_option('snfw_template_seller_alert');

