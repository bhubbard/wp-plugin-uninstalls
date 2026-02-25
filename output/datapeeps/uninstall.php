<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('datapeeps_field_phone');
delete_site_option('datapeeps_field_phone');
delete_option('datapeeps_field_cvr');
delete_site_option('datapeeps_field_cvr');
delete_option('datapeeps_field_pnum');
delete_site_option('datapeeps_field_pnum');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_count' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('datapeeps_api_username');
delete_site_option('datapeeps_api_username');
delete_option('datapeeps_api_password');
delete_site_option('datapeeps_api_password');
delete_option('datapeeps_used_phone_count');
delete_site_option('datapeeps_used_phone_count');
delete_option('datapeeps_found_phone_count');
delete_site_option('datapeeps_found_phone_count');
delete_option('datapeeps_used_cvr_count');
delete_site_option('datapeeps_used_cvr_count');
delete_option('datapeeps_found_cvr_count');
delete_site_option('datapeeps_found_cvr_count');
delete_option('datapeeps_used_pnum_count');
delete_site_option('datapeeps_used_pnum_count');
delete_option('datapeeps_found_pnum_count');
delete_site_option('datapeeps_found_pnum_count');

