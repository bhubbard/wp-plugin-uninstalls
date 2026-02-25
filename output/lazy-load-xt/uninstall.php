<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lazyloadxt_general');
delete_site_option('lazyloadxt_general');
delete_option('lazyloadxt_effects');
delete_site_option('lazyloadxt_effects');
delete_option('lazyloadxt_addons');
delete_site_option('lazyloadxt_addons');
delete_option('lazyloadxt_advanced');
delete_site_option('lazyloadxt_advanced');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'lazyloadxt_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('lazyloadxt_version');
delete_site_option('lazyloadxt_version');

