<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kvs_feed_last_run');
delete_site_option('kvs_feed_last_run');
delete_option('kvs_feed_last_update');
delete_site_option('kvs_feed_last_update');
delete_option('kvs_feed_last_insert');
delete_site_option('kvs_feed_last_insert');
delete_option('kvs_feed_last_delete');
delete_site_option('kvs_feed_last_delete');
delete_option('kvs_feed_last_id');
delete_site_option('kvs_feed_last_id');
delete_option('kvs_feed_meta');
delete_site_option('kvs_feed_meta');
delete_option('kvs_feed_meta_update_time');
delete_site_option('kvs_feed_meta_update_time');
delete_option('kvs_taxonomy_category');
delete_site_option('kvs_taxonomy_category');
delete_option('kvs_taxonomy_tag');
delete_site_option('kvs_taxonomy_tag');
delete_option('kvs_taxonomy_model');
delete_site_option('kvs_taxonomy_model');
delete_option('kvs_taxonomy_source');
delete_site_option('kvs_taxonomy_source');
delete_option('kvs_video_filter_by');
delete_site_option('kvs_video_filter_by');
delete_option('kvs_video_filter_category');
delete_site_option('kvs_video_filter_category');
delete_option('kvs_video_filter_source');
delete_site_option('kvs_video_filter_source');
delete_option('kvs_video_screenshot');
delete_site_option('kvs_video_screenshot');
delete_option('kvs_video_locale');
delete_site_option('kvs_video_locale');
delete_option('kvs_update_limit');
delete_site_option('kvs_update_limit');
delete_option('kvs_post_import_featured_image');
delete_site_option('kvs_post_import_featured_image');
delete_option('kvs_post_type');
delete_site_option('kvs_post_type');
delete_option('kvs_post_date');
delete_site_option('kvs_post_date');
delete_option('kvs_post_body_template');
delete_site_option('kvs_post_body_template');
delete_option('kvs_post_status');
delete_site_option('kvs_post_status');
delete_option('kvs_log_level');
delete_site_option('kvs_log_level');
delete_option('kvs_feed_url');
delete_site_option('kvs_feed_url');
delete_option('kvs_library_path');
delete_site_option('kvs_library_path');
delete_option('kvs_update_period');
delete_site_option('kvs_update_period');
delete_option('kvs_update_full');
delete_site_option('kvs_update_full');
delete_option('kvs_delete_period');
delete_site_option('kvs_delete_period');
delete_option('kvs_full_period');
delete_site_option('kvs_full_period');
delete_option('kvs_custom1_name');
delete_site_option('kvs_custom1_name');
delete_option('kvs_custom1_value');
delete_site_option('kvs_custom1_value');
delete_option('kvs_custom2_name');
delete_site_option('kvs_custom2_name');
delete_option('kvs_custom2_value');
delete_site_option('kvs_custom2_value');
delete_option('kvs_custom3_name');
delete_site_option('kvs_custom3_name');
delete_option('kvs_custom3_value');
delete_site_option('kvs_custom3_value');
delete_option('kvs_custom4_name');
delete_site_option('kvs_custom4_name');
delete_option('kvs_custom4_value');
delete_site_option('kvs_custom4_value');
delete_option('kvs_custom5_name');
delete_site_option('kvs_custom5_name');
delete_option('kvs_custom5_value');
delete_site_option('kvs_custom5_value');

// Delete Transients
delete_transient('kvs-admin-notice');
delete_site_transient('kvs-admin-notice');
delete_transient('kvs-meta-notice-success');
delete_site_transient('kvs-meta-notice-success');
delete_transient('kvs-import-notice-empty');
delete_site_transient('kvs-import-notice-empty');
delete_transient('kvs-import-notice-success');
delete_site_transient('kvs-import-notice-success');

// Clear Cron Jobs
wp_clear_scheduled_hook('kvs_cron_update_hook');
wp_clear_scheduled_hook('kvs_cron_delete_hook');
wp_clear_scheduled_hook('kvs_cron_full_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'kvs-video-link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'kvs-video-link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'kvs-video-link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'kvs-video-link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'kvs-video-screenshot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'kvs-video-screenshot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'kvs-video-screenshot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'kvs-video-screenshot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'kvs-video-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'kvs-video-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'kvs-video-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'kvs-video-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'kvs-video-file-url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'kvs-video-file-url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'kvs-video-file-url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'kvs-video-file-url' ) );

