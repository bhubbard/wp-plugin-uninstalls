<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ctcc_options_settings');
delete_site_option('ctcc_options_settings');
delete_option('ctcc_content_settings');
delete_site_option('ctcc_content_settings');
delete_option('ctcc_styles_settings');
delete_site_option('ctcc_styles_settings');
delete_option('catapult_cookie_options');
delete_site_option('catapult_cookie_options');
delete_option('ggcp_more_info_page');
delete_site_option('ggcp_more_info_page');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ctcc_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ctcc_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ctcc_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ctcc_exclude' ) );

