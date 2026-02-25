<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'clbntb_color_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('clbntb_phone_bar');
delete_site_option('clbntb_phone_bar');
delete_option('clbntb_location_bottom');
delete_site_option('clbntb_location_bottom');
delete_option('setting_size');
delete_site_option('setting_size');
delete_option('clbntb_location');
delete_site_option('clbntb_location');
delete_option('clbntb_off_effects');
delete_site_option('clbntb_off_effects');
delete_option('clbntb_hide_mobile');
delete_site_option('clbntb_hide_mobile');
delete_option('clbntb_hide_desktop');
delete_site_option('clbntb_hide_desktop');
delete_option('clbntb_hide_default_all_in_one');
delete_site_option('clbntb_hide_default_all_in_one');
delete_option('clbntb_enable_all_in_one');
delete_site_option('clbntb_enable_all_in_one');

