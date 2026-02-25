<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jwdsp_general_settings');
delete_site_option('jwdsp_general_settings');
delete_option('jwdsp_accepted_cpt');
delete_site_option('jwdsp_accepted_cpt');
delete_option('jwdsp_general_settings[post_types]');
delete_site_option('jwdsp_general_settings[post_types]');
delete_option('jwdsp_fontawesome');
delete_site_option('jwdsp_fontawesome');
delete_option('JWDSP_version');
delete_site_option('JWDSP_version');
delete_option('JWDSP_PLUGIN_PATH');
delete_site_option('JWDSP_PLUGIN_PATH');
delete_option('JWDSP_PLUGIN_URL');
delete_site_option('JWDSP_PLUGIN_URL');
delete_option('JWDSP Plugin Path');
delete_site_option('JWDSP Plugin Path');
delete_option('JWDSP Plugin URL');
delete_site_option('JWDSP Plugin URL');
delete_option('jwdsp_username');
delete_site_option('jwdsp_username');
delete_option('jwdsp_repository');
delete_site_option('jwdsp_repository');
delete_option('jwdsp_access_token');
delete_site_option('jwdsp_access_token');
delete_option('JWDSP_Accepted_Post_Types');
delete_site_option('JWDSP_Accepted_Post_Types');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'jwdsp_thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'jwdsp_thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'jwdsp_thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'jwdsp_thumbnail' ) );

