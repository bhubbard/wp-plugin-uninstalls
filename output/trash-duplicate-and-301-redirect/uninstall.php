<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plugin_theme');
delete_site_option('plugin_theme');
delete_option('tdrd_promo_time');
delete_site_option('tdrd_promo_time');
delete_option('tdrd_is_optin');
delete_site_option('tdrd_is_optin');
delete_option('trash_duplicates_options');
delete_site_option('trash_duplicates_options');
delete_option('tdrd_delete_data');
delete_site_option('tdrd_delete_data');
delete_option('tdr_version');
delete_site_option('tdr_version');
delete_option('admin_url');
delete_site_option('admin_url');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_tdrd_deletepost_%', '_site_transient_tdrd_deletepost_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

