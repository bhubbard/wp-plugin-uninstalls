<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'shoutout_sms_woo_send_sms_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_sms_template' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('shoutout_sms_woo_default_sms_template');
delete_site_option('shoutout_sms_woo_default_sms_template');
delete_option('shoutout_sms_woo_auth_token');
delete_site_option('shoutout_sms_woo_auth_token');
delete_option('shoutout_sms_woo_from_number');
delete_site_option('shoutout_sms_woo_from_number');
delete_option('shoutout_sms_woo_enable_admin_sms');
delete_site_option('shoutout_sms_woo_enable_admin_sms');
delete_option('shoutout_sms_woo_admin_sms_template');
delete_site_option('shoutout_sms_woo_admin_sms_template');
delete_option('shoutout_sms_woo_admin_sms_recipients');
delete_site_option('shoutout_sms_woo_admin_sms_recipients');

