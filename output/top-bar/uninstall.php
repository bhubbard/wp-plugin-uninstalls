<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tpbr_guests_or_users');
delete_site_option('tpbr_guests_or_users');
delete_option('tpbr_fixed');
delete_site_option('tpbr_fixed');
delete_option('tpbr_message');
delete_site_option('tpbr_message');
delete_option('tpbr_status');
delete_site_option('tpbr_status');
delete_option('tpbr_yn_button');
delete_site_option('tpbr_yn_button');
delete_option('tpbr_color');
delete_site_option('tpbr_color');
delete_option('tpbr_btn_text');
delete_site_option('tpbr_btn_text');
delete_option('tpbr_btn_url');
delete_site_option('tpbr_btn_url');
delete_option('tpbr_btn_behavior');
delete_site_option('tpbr_btn_behavior');
delete_option('tpbr_detect_sticky');
delete_site_option('tpbr_detect_sticky');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'tpbr_role_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

