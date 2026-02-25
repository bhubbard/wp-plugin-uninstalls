<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ai_summary_generator_api_url');
delete_site_option('ai_summary_generator_api_url');
delete_option('ai_summary_generator_api_token');
delete_site_option('ai_summary_generator_api_token');
delete_option('ai_summary_generator_model_name');
delete_site_option('ai_summary_generator_model_name');
delete_option('ai_summary_generator_prompt');
delete_site_option('ai_summary_generator_prompt');
delete_option('ai_summary_generator_homepage_override');
delete_site_option('ai_summary_generator_homepage_override');
delete_option('ai_summary_generator_update_on_post_update');
delete_site_option('ai_summary_generator_update_on_post_update');
delete_option('ai_summary_generator_max_retries');
delete_site_option('ai_summary_generator_max_retries');
delete_option('ai_summary_homepage_override');
delete_site_option('ai_summary_homepage_override');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ai_summary_generator_summary' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ai_summary_generator_summary' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ai_summary_generator_summary' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ai_summary_generator_summary' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ai_summary_generator_last_modified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ai_summary_generator_last_modified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ai_summary_generator_last_modified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ai_summary_generator_last_modified' ) );

