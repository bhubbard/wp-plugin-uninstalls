<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('AIEntries_question');
delete_site_option('AIEntries_question');
delete_option('AIEntries_news_api_key');
delete_site_option('AIEntries_news_api_key');
delete_option('AIEntries_num_calls');
delete_site_option('AIEntries_num_calls');
delete_option('AIEntries_api_key_stable_diffusion');
delete_site_option('AIEntries_api_key_stable_diffusion');
delete_option('AIEntries_api_key');
delete_site_option('AIEntries_api_key');
delete_option('AIEntries_category');
delete_site_option('AIEntries_category');

// Delete Transients
delete_transient('last_six_hour_execution');
delete_site_transient('last_six_hour_execution');

// Clear Cron Jobs
wp_clear_scheduled_hook('AIEntries_daily_cron_job');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ai_entries_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ai_entries_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ai_entries_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ai_entries_post' ) );

