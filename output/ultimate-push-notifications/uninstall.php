<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('upn_db_version');
delete_site_option('upn_db_version');
delete_option('upn_plugin_version');
delete_site_option('upn_plugin_version');
delete_option('upn_plugin_install_date');
delete_site_option('upn_plugin_install_date');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%ed_Activated' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

