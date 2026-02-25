<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpatt_enable_metabox_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpatt_enable_display_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpatt_option_localization');
delete_site_option('wpatt_option_localization');
delete_option('wpatt_option_date_localization');
delete_site_option('wpatt_option_date_localization');
delete_option('wpatt_show_orderby');
delete_site_option('wpatt_show_orderby');
delete_option('wpatt_option_showdate');
delete_site_option('wpatt_option_showdate');
delete_option('wpatt_option_includeimages');
delete_site_option('wpatt_option_includeimages');
delete_option('wpatt_option_targetblank');
delete_site_option('wpatt_option_targetblank');
delete_option('wpatt_option_restrictload');
delete_site_option('wpatt_option_restrictload');
delete_option('wpatt_counter');
delete_site_option('wpatt_counter');
delete_option('wpatt_excludelogged_counter');
delete_site_option('wpatt_excludelogged_counter');
delete_option('wpa_ict');
delete_site_option('wpa_ict');
delete_option('wpa_template');
delete_site_option('wpa_template');
delete_option('wpa_template_custom');
delete_site_option('wpa_template_custom');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpa_off' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpa_off' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpa_off' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpa_off' ) );

