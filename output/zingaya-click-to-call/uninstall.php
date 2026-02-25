<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zingaya_user_email');
delete_site_option('zingaya_user_email');
delete_option('zingaya_user_name');
delete_site_option('zingaya_user_name');
delete_option('zingaya_api_key');
delete_site_option('zingaya_api_key');
delete_option('zingaya_user_id');
delete_site_option('zingaya_user_id');
delete_option('zingaya_active_widget');
delete_site_option('zingaya_active_widget');
delete_option('user_already_exists');
delete_site_option('user_already_exists');
delete_option('zingaya_widget');
delete_site_option('zingaya_widget');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'zingaya_widget_short_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

