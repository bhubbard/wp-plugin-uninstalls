<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gtw_servernum');
delete_site_option('gtw_servernum');
delete_option('gtw_field_servernum');
delete_site_option('gtw_field_servernum');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'gtw_field_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('gtw_autojoin');
delete_site_option('gtw_autojoin');
delete_option('gtw_timezone');
delete_site_option('gtw_timezone');
delete_option('gtw_registered');
delete_site_option('gtw_registered');
delete_option('gtw_field_firstname');
delete_site_option('gtw_field_firstname');
delete_option('gtw_field_lastname');
delete_site_option('gtw_field_lastname');
delete_option('gtw_field_email');
delete_site_option('gtw_field_email');
delete_option('gtw_field_phone');
delete_site_option('gtw_field_phone');
delete_option('gtw_field_gtwid');
delete_site_option('gtw_field_gtwid');

