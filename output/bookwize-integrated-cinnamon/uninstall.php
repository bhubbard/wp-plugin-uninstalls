<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bw_apiBaseUrl');
delete_site_option('bw_apiBaseUrl');
delete_option('bw_apiKey');
delete_site_option('bw_apiKey');
delete_option('bw_hotelId');
delete_site_option('bw_hotelId');
delete_option('bw_primary_color');
delete_site_option('bw_primary_color');
delete_option('bw_secondary_color');
delete_site_option('bw_secondary_color');
delete_option('bw_header_color');
delete_site_option('bw_header_color');
delete_option('wp-dynamic-css-cache');
delete_site_option('wp-dynamic-css-cache');
delete_option('bw_enable_jcc');
delete_site_option('bw_enable_jcc');
delete_option('bw_preload');
delete_site_option('bw_preload');
delete_option('bw_currency');
delete_site_option('bw_currency');
delete_option('bw_debug');
delete_site_option('bw_debug');
delete_option('bw_header');
delete_site_option('bw_header');
delete_option('bw_group_text');
delete_site_option('bw_group_text');
delete_option('bw_theme');
delete_site_option('bw_theme');
delete_option('bw_jcc_password');
delete_site_option('bw_jcc_password');
delete_option('bw_jcc_merchant');
delete_site_option('bw_jcc_merchant');
delete_option('bw_jcc_acquirer');
delete_site_option('bw_jcc_acquirer');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bookwize_integrated_page_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bookwize_integrated_page_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bookwize_integrated_page_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bookwize_integrated_page_type' ) );

