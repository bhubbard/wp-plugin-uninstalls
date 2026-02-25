<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ptbsb_sitemap_cache_time');
delete_site_option('ptbsb_sitemap_cache_time');
delete_option('ptbsb_rewrite_rules_version');
delete_site_option('ptbsb_rewrite_rules_version');
delete_option('ptbsb_selective_gallery_mode');
delete_site_option('ptbsb_selective_gallery_mode');
delete_option('ptbsb_wp_sitemap_integration');
delete_site_option('ptbsb_wp_sitemap_integration');
delete_option('ptbsb_debug_logging');
delete_site_option('ptbsb_debug_logging');
delete_option('ptbsb_seo_integration_mode');
delete_site_option('ptbsb_seo_integration_mode');
delete_option('ptbsb_force_add_robots_txt');
delete_site_option('ptbsb_force_add_robots_txt');
delete_option('ptbsb_disable_robots_txt');
delete_site_option('ptbsb_disable_robots_txt');
delete_option('ptbsb_seo_integration_result');
delete_site_option('ptbsb_seo_integration_result');
delete_option('ptbsb_seo_integration_timestamp');
delete_site_option('ptbsb_seo_integration_timestamp');
delete_option('ptbsb_sitemap_cache_stale');
delete_site_option('ptbsb_sitemap_cache_stale');
delete_option('ptbsb_robots_cleanup_needed');
delete_site_option('ptbsb_robots_cleanup_needed');
delete_option('ptbsb_log_files_migrated');
delete_site_option('ptbsb_log_files_migrated');
delete_option('ptbsb_seo_conflict_handled');
delete_site_option('ptbsb_seo_conflict_handled');
delete_option('ptbsb_seo_plugins_hash');
delete_site_option('ptbsb_seo_plugins_hash');
delete_option('ptbsb_last_sitemap_generation');
delete_site_option('ptbsb_last_sitemap_generation');
delete_option('ptbsb_update_cache_buster');
delete_site_option('ptbsb_update_cache_buster');
delete_option('ptbsb_use_dummy_data');
delete_site_option('ptbsb_use_dummy_data');
delete_option('ptbsb_sitemap_metadata');
delete_site_option('ptbsb_sitemap_metadata');

// Delete Transients
delete_transient('ptbsb_seo_conflict_notice');
delete_site_transient('ptbsb_seo_conflict_notice');
delete_transient('ptbsb_scan_success');
delete_site_transient('ptbsb_scan_success');
delete_transient('ptbsb_sitemap_cache');
delete_site_transient('ptbsb_sitemap_cache');
delete_transient('robots_txt');
delete_site_transient('robots_txt');
delete_transient('wp_robots_txt');
delete_site_transient('wp_robots_txt');
delete_transient('ptbsb_update_check');
delete_site_transient('ptbsb_update_check');
delete_transient('ptbsb_reset_success');
delete_site_transient('ptbsb_reset_success');
delete_transient('ptbsb_seo_integration_result');
delete_site_transient('ptbsb_seo_integration_result');
delete_transient('ptbsb_settings_updated');
delete_site_transient('ptbsb_settings_updated');
delete_transient('ptbsb_robots_verification_scheduled');
delete_site_transient('ptbsb_robots_verification_scheduled');
delete_transient('ptbsb_robots_write_failed');
delete_site_transient('ptbsb_robots_write_failed');
delete_transient('ptbsb_scan_partial');
delete_site_transient('ptbsb_scan_partial');
delete_transient('ptbsb_scan_failed');
delete_site_transient('ptbsb_scan_failed');
delete_transient('ptbsb_robots_analysis');
delete_site_transient('ptbsb_robots_analysis');
delete_transient('ptbsb_robots_platform_restriction');
delete_site_transient('ptbsb_robots_platform_restriction');
delete_transient('ptbsb_robots_notice_dismissed');
delete_site_transient('ptbsb_robots_notice_dismissed');
delete_transient('ptbsb_seopress_test_result');
delete_site_transient('ptbsb_seopress_test_result');
delete_transient('ptbsb_scan_queue');
delete_site_transient('ptbsb_scan_queue');
delete_transient('ptbsb_scan_progress');
delete_site_transient('ptbsb_scan_progress');
delete_transient('ptbsb_sitemap_regenerating');
delete_site_transient('ptbsb_sitemap_regenerating');
delete_transient('ptbsb_robots_physical_check_done');
delete_site_transient('ptbsb_robots_physical_check_done');
delete_transient('ptbsb_seo_check_cache');
delete_site_transient('ptbsb_seo_check_cache');
delete_transient('ptbsb_needs_flush');
delete_site_transient('ptbsb_needs_flush');
delete_transient('ptbsb_update_available');
delete_site_transient('ptbsb_update_available');

// Clear Cron Jobs
wp_clear_scheduled_hook('ptbsb_verify_robots_write');
wp_clear_scheduled_hook('ptbsb_regenerate_sitemap_cron');
wp_clear_scheduled_hook('ptbsb_daily_update_check');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ptbsb_last_scanned' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ptbsb_last_scanned' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ptbsb_last_scanned' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ptbsb_last_scanned' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ptbsb_last_scan_image_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ptbsb_last_scan_image_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ptbsb_last_scan_image_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ptbsb_last_scan_image_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ptbsb_scan_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ptbsb_scan_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ptbsb_scan_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ptbsb_scan_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ptbsb_gallery_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ptbsb_gallery_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ptbsb_gallery_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ptbsb_gallery_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ptbsb_cached_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ptbsb_cached_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ptbsb_cached_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ptbsb_cached_images' ) );

