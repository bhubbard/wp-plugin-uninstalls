<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('btta_reviews_installed_on');
delete_site_option('btta_reviews_installed_on');
delete_option('btta_total_open_count');
delete_site_option('btta_total_open_count');
delete_option('ns_btta_font_awsome');
delete_site_option('ns_btta_font_awsome');
delete_option('ns_btta_position');
delete_site_option('ns_btta_position');
delete_option('ns_btta_background');
delete_site_option('ns_btta_background');
delete_option('ns_btta_text_color');
delete_site_option('ns_btta_text_color');
delete_option('ns_btta_border_color');
delete_site_option('ns_btta_border_color');
delete_option('ns_btta_background_hover');
delete_site_option('ns_btta_background_hover');
delete_option('ns_btta_text_color_hover');
delete_site_option('ns_btta_text_color_hover');
delete_option('ns_btta_border_color_hover');
delete_site_option('ns_btta_border_color_hover');
delete_option('ns_btta_speed');
delete_site_option('ns_btta_speed');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pe-plugin-id-response-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'plugineye_init%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_btta_reviews_dismissed_triggers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_btta_reviews_dismissed_triggers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_btta_reviews_dismissed_triggers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_btta_reviews_dismissed_triggers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_btta_reviews_last_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_btta_reviews_last_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_btta_reviews_last_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_btta_reviews_last_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_btta_reviews_already_did' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_btta_reviews_already_did' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_btta_reviews_already_did' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_btta_reviews_already_did' ) );

