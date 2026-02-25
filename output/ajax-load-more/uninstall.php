<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alm_drop_pluginVersion');
delete_site_option('alm_drop_pluginVersion');
delete_option('alm_version');
delete_site_option('alm_version');
delete_option('alm_settings');
delete_site_option('alm_settings');
delete_option('_alm_settings');
delete_site_option('_alm_settings');
delete_option('woocommerce_default_catalog_orderby');
delete_site_option('woocommerce_default_catalog_orderby');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'edd_api_request_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

