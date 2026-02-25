<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ai_excerpt_gen_api_key');
delete_site_option('ai_excerpt_gen_api_key');
delete_option('ai_excerpt_gen_max_token');
delete_site_option('ai_excerpt_gen_max_token');
delete_option('ai_excerpt_gen_post_types_enabled');
delete_site_option('ai_excerpt_gen_post_types_enabled');
delete_option('ai_excerpt_gen_model');
delete_site_option('ai_excerpt_gen_model');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'themencode_ai_generated_excerpt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'themencode_ai_generated_excerpt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'themencode_ai_generated_excerpt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'themencode_ai_generated_excerpt' ) );

