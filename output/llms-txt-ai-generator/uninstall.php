<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('llmstxtaigen_openrouter_api_key');
delete_site_option('llmstxtaigen_openrouter_api_key');
delete_option('llmstxtaigen_enable_batch_processing');
delete_site_option('llmstxtaigen_enable_batch_processing');
delete_option('llmstxtaigen_ai_batch_size');
delete_site_option('llmstxtaigen_ai_batch_size');
delete_option('llms_openrouter_api_key');
delete_site_option('llms_openrouter_api_key');
delete_option('llmstxtaigen_enable_ai_descriptions');
delete_site_option('llmstxtaigen_enable_ai_descriptions');
delete_option('llmstxtaigen_saved_options');
delete_site_option('llmstxtaigen_saved_options');
delete_option('llmstxtaigen_content_language');
delete_site_option('llmstxtaigen_content_language');
delete_option('llms_enable_batch_processing');
delete_site_option('llms_enable_batch_processing');
delete_option('llms_enable_content_cleaning');
delete_site_option('llms_enable_content_cleaning');
delete_option('llms_custom_translations');
delete_site_option('llms_custom_translations');
delete_option('llms_content_language');
delete_site_option('llms_content_language');
delete_option('llmstxtaigen_enable_content_cleaning');
delete_site_option('llmstxtaigen_enable_content_cleaning');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_aioseo_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_aioseo_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_aioseo_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_aioseo_description' ) );

