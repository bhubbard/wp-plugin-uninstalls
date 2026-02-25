<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ptiwmm_title');
delete_site_option('ptiwmm_title');
delete_option('ptiwmm_banner_image');
delete_site_option('ptiwmm_banner_image');
delete_option('ptiwmm_headline');
delete_site_option('ptiwmm_headline');
delete_option('ptiwmm_message');
delete_site_option('ptiwmm_message');
delete_option('ptiwmm_countdown_date');
delete_site_option('ptiwmm_countdown_date');
delete_option('ptiwmm_footer_copyright');
delete_site_option('ptiwmm_footer_copyright');
delete_option('ptiwmm_enabled');
delete_site_option('ptiwmm_enabled');
delete_option('ptiwmm_background_color');
delete_site_option('ptiwmm_background_color');
delete_option('ptiwmm_text_color');
delete_site_option('ptiwmm_text_color');
delete_option('ptiwmm_ga_code');
delete_site_option('ptiwmm_ga_code');
delete_option('ptiwmm_503_enabled');
delete_site_option('ptiwmm_503_enabled');
delete_option('ptiwmm_selected_pages');
delete_site_option('ptiwmm_selected_pages');
delete_option('ptiwmm_mode');
delete_site_option('ptiwmm_mode');
delete_option('ptiwmm_bypass_key');
delete_site_option('ptiwmm_bypass_key');
delete_option('ptiwmm_selected_template');
delete_site_option('ptiwmm_selected_template');
delete_option('ptiwmm_uploaded_images');
delete_site_option('ptiwmm_uploaded_images');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'phone' ) );

