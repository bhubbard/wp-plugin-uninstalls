<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alg_wc_breadcrumbs_customizer_change_defaults_enabled');
delete_site_option('alg_wc_breadcrumbs_customizer_change_defaults_enabled');
delete_option('alg_wc_breadcrumbs_customizer_change_home_url_enabled');
delete_site_option('alg_wc_breadcrumbs_customizer_change_home_url_enabled');
delete_option('alg_wc_breadcrumbs_customizer_hide');
delete_site_option('alg_wc_breadcrumbs_customizer_hide');
delete_option('alg_wc_breadcrumbs_customizer_defaults');
delete_site_option('alg_wc_breadcrumbs_customizer_defaults');
delete_option('alg_wc_breadcrumbs_customizer_home_url');
delete_site_option('alg_wc_breadcrumbs_customizer_home_url');
delete_option('alg_wc_breadcrumbs_customizer_version');
delete_site_option('alg_wc_breadcrumbs_customizer_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

