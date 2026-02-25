<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'virtooal_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('virtooal_api');
delete_site_option('virtooal_api');
delete_option('virtooal_installation_id');
delete_site_option('virtooal_installation_id');
delete_option('virtooal_settings');
delete_site_option('virtooal_settings');
delete_option('virtooal_try_on_mirror_version');
delete_site_option('virtooal_try_on_mirror_version');

