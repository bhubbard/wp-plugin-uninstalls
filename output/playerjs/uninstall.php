<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('playerjs_com_script_path');
delete_site_option('playerjs_com_script_path');
delete_option('playerjs_com_width');
delete_site_option('playerjs_com_width');
delete_option('playerjs_com_customheight');
delete_site_option('playerjs_com_customheight');
delete_option('playerjs_com_height');
delete_site_option('playerjs_com_height');
delete_option('playerjs_com_align');
delete_site_option('playerjs_com_align');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'playerjs_com_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

