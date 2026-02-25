<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('atfp_api_key');
delete_site_option('atfp_api_key');
delete_option('atfp_translate_shortcodes');
delete_site_option('atfp_translate_shortcodes');
delete_option('atfp_response_error');
delete_site_option('atfp_response_error');
delete_option('atfp_translated_entities');
delete_site_option('atfp_translated_entities');
delete_option('atfp_translated_taxonomies');
delete_site_option('atfp_translated_taxonomies');
delete_option('atfp_translated_single_post');
delete_site_option('atfp_translated_single_post');
delete_option('atfp_translated_single_term');
delete_site_option('atfp_translated_single_term');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'atfp_poly_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'atfp_poly_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'atfp_poly_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'atfp_poly_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'atfp_reviewed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'atfp_reviewed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'atfp_reviewed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'atfp_reviewed' ) );

