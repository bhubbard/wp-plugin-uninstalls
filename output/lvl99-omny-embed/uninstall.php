<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_lvl99-omny-embed/installed');
delete_site_option('_lvl99-omny-embed/installed');
delete_option('_lvl99-omny-embed/version');
delete_site_option('_lvl99-omny-embed/version');
delete_option('_lvl99-plugin/installed');
delete_site_option('_lvl99-plugin/installed');
delete_option('_lvl99-plugin/version');
delete_site_option('_lvl99-plugin/version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'lvl99-plugin/%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

