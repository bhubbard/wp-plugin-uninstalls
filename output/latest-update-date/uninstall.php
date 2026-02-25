<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'latest-update_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('latest-update_conditionals');
delete_site_option('latest-update_conditionals');
delete_option('latest-update_before_text');
delete_site_option('latest-update_before_text');
delete_option('latest-update_after_text');
delete_site_option('latest-update_after_text');
delete_option('latest-update_date_format');
delete_site_option('latest-update_date_format');
delete_option('latest-update_before_style');
delete_site_option('latest-update_before_style');
delete_option('latest-update_after_style');
delete_site_option('latest-update_after_style');

