<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aio_fonts');
delete_site_option('aio_fonts');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_dont_show_again' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('rnaio_dont_show_again');
delete_site_option('rnaio_dont_show_again');
delete_option('aio_review_stage');
delete_site_option('aio_review_stage');
delete_option('aio_license');
delete_site_option('aio_license');

// Clear Cron Jobs
wp_clear_scheduled_hook('allinoneforms_delete_expired_items');

