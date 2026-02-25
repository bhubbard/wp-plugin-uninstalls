<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'comments_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('comments_1');
delete_site_option('comments_1');
delete_option('comments_2');
delete_site_option('comments_2');
delete_option('comments_3');
delete_site_option('comments_3');
delete_option('comments_4');
delete_site_option('comments_4');
delete_option('comments_5');
delete_site_option('comments_5');
delete_option('comments_6');
delete_site_option('comments_6');
delete_option('comments_7');
delete_site_option('comments_7');
delete_option('comments_8');
delete_site_option('comments_8');
delete_option('comments_9');
delete_site_option('comments_9');
delete_option('comments_10');
delete_site_option('comments_10');
delete_option('comments_11');
delete_site_option('comments_11');

