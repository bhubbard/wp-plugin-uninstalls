<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uqrate_chnkey_key');
delete_site_option('uqrate_chnkey_key');
delete_option('uqrate_opt_dropdown_1');
delete_site_option('uqrate_opt_dropdown_1');
delete_option('uqrate_opt_checkbox_1');
delete_site_option('uqrate_opt_checkbox_1');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%error' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

