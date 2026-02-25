<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('moodmoderator_api_key');
delete_site_option('moodmoderator_api_key');
delete_option('moodmoderator_strictness');
delete_site_option('moodmoderator_strictness');
delete_option('moodmoderator_custom_tones');
delete_site_option('moodmoderator_custom_tones');
delete_option('moodmoderator_enable_logging');
delete_site_option('moodmoderator_enable_logging');
delete_option('moodmoderator_cache_duration');
delete_site_option('moodmoderator_cache_duration');
delete_option('moodmoderator_predefined_tones');
delete_site_option('moodmoderator_predefined_tones');
delete_option('moodmoderator_version');
delete_site_option('moodmoderator_version');

// Delete Transients
delete_transient('moodmoderator_api_calls_count');
delete_site_transient('moodmoderator_api_calls_count');
delete_transient('moodmoderator_no_api_key_warning');
delete_site_transient('moodmoderator_no_api_key_warning');
delete_transient('moodmoderator_dashboard_widget');
delete_site_transient('moodmoderator_dashboard_widget');

// Clear Cron Jobs
wp_clear_scheduled_hook('moodmoderator_analyze_comment');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'moodmoderator_tone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'moodmoderator_tone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'moodmoderator_tone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'moodmoderator_tone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'moodmoderator_content_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'moodmoderator_content_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'moodmoderator_content_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'moodmoderator_content_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'moodmoderator_analyzed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'moodmoderator_analyzed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'moodmoderator_analyzed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'moodmoderator_analyzed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'moodmoderator_confidence' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'moodmoderator_confidence' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'moodmoderator_confidence' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'moodmoderator_confidence' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'moodmoderator_ai_reasoning' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'moodmoderator_ai_reasoning' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'moodmoderator_ai_reasoning' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'moodmoderator_ai_reasoning' ) );

