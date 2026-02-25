<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'link_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('link_1');
delete_site_option('link_1');
delete_option('link_2');
delete_site_option('link_2');
delete_option('link_3');
delete_site_option('link_3');
delete_option('link_4');
delete_site_option('link_4');
delete_option('link_5');
delete_site_option('link_5');
delete_option('link_6');
delete_site_option('link_6');
delete_option('link_7');
delete_site_option('link_7');
delete_option('link_8');
delete_site_option('link_8');
delete_option('link_9');
delete_site_option('link_9');
delete_option('link_10');
delete_site_option('link_10');
delete_option('link_11');
delete_site_option('link_11');
delete_option('link_12');
delete_site_option('link_12');
delete_option('link_13');
delete_site_option('link_13');
delete_option('link_14');
delete_site_option('link_14');
delete_option('link_15');
delete_site_option('link_15');
delete_option('link_16');
delete_site_option('link_16');
delete_option('link_17');
delete_site_option('link_17');
delete_option('link_18');
delete_site_option('link_18');

