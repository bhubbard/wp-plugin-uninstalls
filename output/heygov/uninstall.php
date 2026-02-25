<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('heygov_id');
delete_site_option('heygov_id');
delete_option('heygov_features');
delete_site_option('heygov_features');
delete_option('heygov_btn_text');
delete_site_option('heygov_btn_text');
delete_option('heygov_btn_position');
delete_site_option('heygov_btn_position');
delete_option('heygov_location_required');
delete_site_option('heygov_location_required');
delete_option('heygov_banner');
delete_site_option('heygov_banner');
delete_option('heygov_banner_bg_color');
delete_site_option('heygov_banner_bg_color');
delete_option('heygov_banner_img_big');
delete_site_option('heygov_banner_img_big');
delete_option('heygov_banner_img_small');
delete_site_option('heygov_banner_img_small');
delete_option('heygov_api_key');
delete_site_option('heygov_api_key');

// Delete Transients
delete_transient('heygov-venues');
delete_site_transient('heygov-venues');
delete_transient('forms');
delete_site_transient('forms');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_venue-%', '_site_transient_venue-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'heygov_venues' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'heygov_venues' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'heygov_venues' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'heygov_venues' ) );

