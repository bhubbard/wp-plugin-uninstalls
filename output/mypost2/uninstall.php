<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mypost2_domain_key');
delete_site_option('mypost2_domain_key');
delete_option('mypost2_cached_category_performance');
delete_site_option('mypost2_cached_category_performance');
delete_option('mypost2_cached_top_reposts');
delete_site_option('mypost2_cached_top_reposts');
delete_option('mypost2_cached_stats');
delete_site_option('mypost2_cached_stats');
delete_option('mypost2_cached_stats_time');
delete_site_option('mypost2_cached_stats_time');
delete_option('mypost2_settings');
delete_site_option('mypost2_settings');
delete_option('mypost2_user_timezone');
delete_site_option('mypost2_user_timezone');
delete_option('mypost2_user_email');
delete_site_option('mypost2_user_email');
delete_option('mypost2_brand_hashtag_updated_at');
delete_site_option('mypost2_brand_hashtag_updated_at');
delete_option('mypost2_last_sync_timestamp');
delete_site_option('mypost2_last_sync_timestamp');
delete_option('mypost2_user_first_name');
delete_site_option('mypost2_user_first_name');
delete_option('mypost2_email_verified');
delete_site_option('mypost2_email_verified');
delete_option('mypost2_last_sync');
delete_site_option('mypost2_last_sync');
delete_option('mypost2_activation_time');
delete_site_option('mypost2_activation_time');
delete_option('mypost2_setup_completed');
delete_site_option('mypost2_setup_completed');
delete_option('mypost2_indexes_created');
delete_site_option('mypost2_indexes_created');
delete_option('mypost2_db_version');
delete_site_option('mypost2_db_version');
delete_option('mypost2_verification_sent');
delete_site_option('mypost2_verification_sent');
delete_option('mypost2_billing_migrated_to_get');
delete_site_option('mypost2_billing_migrated_to_get');
delete_option('mypost2_dart_count');
delete_site_option('mypost2_dart_count');
delete_option('mypost2_billing_legacy_balance');
delete_site_option('mypost2_billing_legacy_balance');
delete_option('mypost2_last_counter_cleanup');
delete_site_option('mypost2_last_counter_cleanup');
delete_option('mypost2_cached_analytics');
delete_site_option('mypost2_cached_analytics');
delete_option('mypost2_tour_completed');
delete_site_option('mypost2_tour_completed');

// Delete Transients
delete_transient('mypost2_show_setup');
delete_site_transient('mypost2_show_setup');
delete_transient('mypost2_dart_balance_cache');
delete_site_transient('mypost2_dart_balance_cache');
delete_transient('mypost2_robots_txt_rules');
delete_site_transient('mypost2_robots_txt_rules');
delete_transient('mypost2_verification_notice_dismissed');
delete_site_transient('mypost2_verification_notice_dismissed');

// Clear Cron Jobs
wp_clear_scheduled_hook('mypost2_hourly_sync');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mypost2_pool' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mypost2_pool' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mypost2_pool' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mypost2_pool' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mypost2_is_repost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mypost2_is_repost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mypost2_is_repost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mypost2_is_repost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mypost2_pool_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mypost2_pool_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mypost2_pool_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mypost2_pool_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mypost2_original_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mypost2_original_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mypost2_original_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mypost2_original_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mypost2_created_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mypost2_created_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mypost2_created_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mypost2_created_date' ) );

