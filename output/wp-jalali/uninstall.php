<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ztjalali_do_activation');
delete_site_option('ztjalali_do_activation');
delete_option('ztjalali_options');
delete_site_option('ztjalali_options');
delete_option('ztjalali_version');
delete_site_option('ztjalali_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'mps_jd_options_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

