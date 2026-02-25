<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smspilot_apikey');
delete_site_option('smspilot_apikey');
delete_option('smspilot_sender');
delete_site_option('smspilot_sender');
delete_option('smspilot_vendor_phone');
delete_site_option('smspilot_vendor_phone');
delete_option('smspilot_vendor_status1');
delete_site_option('smspilot_vendor_status1');
delete_option('smspilot_vendor_msg1');
delete_site_option('smspilot_vendor_msg1');
delete_option('smspilot_vendor_voice1');
delete_site_option('smspilot_vendor_voice1');
delete_option('smspilot_vendor_status2');
delete_site_option('smspilot_vendor_status2');
delete_option('smspilot_vendor_msg2');
delete_site_option('smspilot_vendor_msg2');
delete_option('smspilot_shopper_status1');
delete_site_option('smspilot_shopper_status1');
delete_option('smspilot_shopper_msg1');
delete_site_option('smspilot_shopper_msg1');
delete_option('smspilot_shopper_status2');
delete_site_option('smspilot_shopper_status2');
delete_option('smspilot_shopper_msg2');
delete_site_option('smspilot_shopper_msg2');
delete_option('smspilot_last_error');
delete_site_option('smspilot_last_error');
delete_option('smspilot_shopper_status3');
delete_site_option('smspilot_shopper_status3');
delete_option('smspilot_shopper_msg3');
delete_site_option('smspilot_shopper_msg3');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'smspilot_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

