<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('giantwp_flatpercentage_discount');
delete_site_option('giantwp_flatpercentage_discount');
delete_option('giantwp_bogo_discount');
delete_site_option('giantwp_bogo_discount');
delete_option('giantwp_shipping_discount');
delete_site_option('giantwp_shipping_discount');
delete_option('giantwp_bxgy_discount');
delete_site_option('giantwp_bxgy_discount');
delete_option('giantwp_bulk_discount');
delete_site_option('giantwp_bulk_discount');
delete_option('giantwp_discountrules_settings');
delete_site_option('giantwp_discountrules_settings');
delete_option('aio_bogo_discount');
delete_site_option('aio_bogo_discount');
delete_option('aio_bxgy_discount');
delete_site_option('aio_bxgy_discount');
delete_option('GWPDR_installation_time');
delete_site_option('GWPDR_installation_time');
delete_option('GWPDR_version');
delete_site_option('GWPDR_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_last_send' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_skipped' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_allow_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('gwpdr_activation_redirect');
delete_site_transient('gwpdr_activation_redirect');

// Clear Cron Jobs

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_gwpdr_bogo_applied_rules' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_gwpdr_bogo_applied_rules' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_gwpdr_bogo_applied_rules' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_gwpdr_bogo_applied_rules' ) );

