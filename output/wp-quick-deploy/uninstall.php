<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('quick_deploy_plugins');
delete_site_option('quick_deploy_plugins');
delete_option('update_plugins');
delete_site_option('update_plugins');
delete_option('pc_ignored_plugins');
delete_site_option('pc_ignored_plugins');
delete_option('recently_activated');
delete_site_option('recently_activated');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_plugins_delete_result_%', '_site_transient_plugins_delete_result_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

