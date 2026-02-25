<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('radle_comment_system');
delete_site_option('radle_comment_system');
delete_option('radle_subreddit');
delete_site_option('radle_subreddit');
delete_option('radle_client_id');
delete_site_option('radle_client_id');
delete_option('radle_client_secret');
delete_site_option('radle_client_secret');
delete_option('radle_share_events');
delete_site_option('radle_share_events');
delete_option('radle_share_domain');
delete_site_option('radle_share_domain');
delete_option('radle_reddit_access_token');
delete_site_option('radle_reddit_access_token');
delete_option('radle_reddit_refresh_token');
delete_site_option('radle_reddit_refresh_token');
delete_option('radle_destination_type');
delete_site_option('radle_destination_type');
delete_option('radle_reddit_username');
delete_site_option('radle_reddit_username');
delete_option('radle_show_comments_menu');
delete_site_option('radle_show_comments_menu');
delete_option('radle_display_badges');
delete_site_option('radle_display_badges');
delete_option('radle_button_position');
delete_site_option('radle_button_position');
delete_option('radle_show_powered_by');
delete_site_option('radle_show_powered_by');
delete_option('radle_default_post_type');
delete_site_option('radle_default_post_type');
delete_option('radle_default_title_template');
delete_site_option('radle_default_title_template');
delete_option('radle_default_content_template');
delete_site_option('radle_default_content_template');
delete_option('radle_enable_rate_limit_monitoring');
delete_site_option('radle_enable_rate_limit_monitoring');
delete_option('radle_rate_limit_data');
delete_site_option('radle_rate_limit_data');
delete_option('radle_cache_duration');
delete_site_option('radle_cache_duration');
delete_option('radle_comment_approval_filter');
delete_site_option('radle_comment_approval_filter');
delete_option('radle_max_depth_level');
delete_site_option('radle_max_depth_level');
delete_option('radle_max_siblings');
delete_site_option('radle_max_siblings');
delete_option('radle_enable_search');
delete_site_option('radle_enable_search');
delete_option('radle_show_badges');
delete_site_option('radle_show_badges');
delete_option('radle_default_sort');
delete_site_option('radle_default_sort');
delete_option('radle_github_access_token');
delete_site_option('radle_github_access_token');
delete_option('radle_site_id');
delete_site_option('radle_site_id');

// Delete Transients
delete_transient('radle_oauth_state');
delete_site_transient('radle_oauth_state');

// Clear Cron Jobs
wp_clear_scheduled_hook('radle_usage_weekly_ping_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_reddit_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_reddit_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_reddit_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_reddit_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_radle_hidden_comments' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_radle_hidden_comments' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_radle_hidden_comments' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_radle_hidden_comments' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_radle_comment_system_override' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_radle_comment_system_override' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_radle_comment_system_override' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_radle_comment_system_override' ) );

