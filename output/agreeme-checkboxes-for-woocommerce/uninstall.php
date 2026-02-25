<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('agrwc_enabled');
delete_site_option('agrwc_enabled');
delete_option('agrwc_checkboxes_data');
delete_site_option('agrwc_checkboxes_data');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('agrwc_buttonclasses');
delete_site_option('agrwc_buttonclasses');
delete_option('agrwc_formclasses');
delete_site_option('agrwc_formclasses');
delete_option('agrwc_alertmsg');
delete_site_option('agrwc_alertmsg');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wc_price_based_country_version');
delete_site_option('wc_price_based_country_version');
delete_option('_oga_wppbc_countries_groups');
delete_site_option('_oga_wppbc_countries_groups');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');

// Delete Transients
delete_transient('agrwc_unistall');
delete_site_transient('agrwc_unistall');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_agrwc_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_agrwc_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_agrwc_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_agrwc_%' ) );

