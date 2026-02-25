<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ayudawp_wvc_jetpack_notice_dismissed');
delete_site_option('ayudawp_wvc_jetpack_notice_dismissed');
delete_option('jetpack_active_modules');
delete_site_option('jetpack_active_modules');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ayudawp_wvc_conditions');
delete_site_option('ayudawp_wvc_conditions');
delete_option('ayudawp_wvc_settings');
delete_site_option('ayudawp_wvc_settings');
delete_option('ayudawp_wvc_migrated');
delete_site_option('ayudawp_wvc_migrated');

