<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('haayal_ai_proxy_quota_remaining');
delete_site_option('haayal_ai_proxy_quota_remaining');
delete_option('haayal_slug_translator_dismissed_notice');
delete_site_option('haayal_slug_translator_dismissed_notice');
delete_option('haayal_dismissed_review_notice');
delete_site_option('haayal_dismissed_review_notice');
delete_option('_ai_slug_generated_slugs_counter');
delete_site_option('_ai_slug_generated_slugs_counter');
delete_option('ai_slug_translator_settings');
delete_site_option('ai_slug_translator_settings');
delete_option('_ai_slug_error_log');
delete_site_option('_ai_slug_error_log');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_generated_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_generated_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_generated_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_generated_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_slug_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_slug_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_slug_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_slug_source' ) );

