<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('puc_license_rdw');
delete_site_option('puc_license_rdw');
delete_option('open-rdw-notice-dismissed');
delete_site_option('open-rdw-notice-dismissed');
delete_option('tsd_rdw_license_status');
delete_site_option('tsd_rdw_license_status');
delete_option('open_rdw_formatters');
delete_site_option('open_rdw_formatters');
delete_option('status_puc_license_rdw');
delete_site_option('status_puc_license_rdw');
delete_option('puc_date_rdw');
delete_site_option('puc_date_rdw');
delete_option('tussendoor_token');
delete_site_option('tussendoor_token');
delete_option('rdw_tsd_license');
delete_site_option('rdw_tsd_license');
delete_option('tsd_rdw_tsd_rdw_license_status');
delete_site_option('tsd_rdw_tsd_rdw_license_status');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_license_info', '_site_transient_%_license_info' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

