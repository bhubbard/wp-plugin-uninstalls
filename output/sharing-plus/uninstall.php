<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sharing_plus_review_dismiss');
delete_site_option('sharing_plus_review_dismiss');
delete_option('sharing_plus_active_time');
delete_site_option('sharing_plus_active_time');
delete_option('run_sharing_plus_update_routine_2');
delete_site_option('run_sharing_plus_update_routine_2');
delete_option('sharing_plus_networks');
delete_site_option('sharing_plus_networks');
delete_option('sharing_plus_icons_order');
delete_site_option('sharing_plus_icons_order');
delete_option('sharing_plus_settings');
delete_site_option('sharing_plus_settings');
delete_option('sharing_plus_inline');
delete_site_option('sharing_plus_inline');
delete_option('sharing_plus_positions');
delete_site_option('sharing_plus_positions');
delete_option('sharing_plus_themes');
delete_site_option('sharing_plus_themes');
delete_option('sharing_plus_extra');
delete_site_option('sharing_plus_extra');
delete_option('sharing_plus_not_exist_post_old_counts');
delete_site_option('sharing_plus_not_exist_post_old_counts');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_counts' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sharing_plus_not_exist_post_total_counts');
delete_site_option('sharing_plus_not_exist_post_total_counts');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sharing_plus_follow_twitter_token');
delete_site_option('sharing_plus_follow_twitter_token');
delete_option('sharing_plus_sidebar');
delete_site_option('sharing_plus_sidebar');
delete_option('sharing_plus_advanced');
delete_site_option('sharing_plus_advanced');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('sharing_plus_follow_facebook_counter');
delete_site_transient('sharing_plus_follow_facebook_counter');
delete_transient('sharing_plus_follow_twitter_counter');
delete_site_transient('sharing_plus_follow_twitter_counter');
delete_transient('sharing_plus_follow_google_counter');
delete_site_transient('sharing_plus_follow_google_counter');
delete_transient('sharing_plus_follow_youtube_counter');
delete_site_transient('sharing_plus_follow_youtube_counter');
delete_transient('sharing_plus_follow_pinterest_counter');
delete_site_transient('sharing_plus_follow_pinterest_counter');
delete_transient('sharing_plus_follow_instagram_counter');
delete_site_transient('sharing_plus_follow_instagram_counter');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sharing_plus_cache_timestamp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sharing_plus_cache_timestamp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sharing_plus_cache_timestamp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sharing_plus_cache_timestamp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sharing_plus_old_counts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sharing_plus_old_counts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sharing_plus_old_counts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sharing_plus_old_counts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_counts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_counts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_counts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_counts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sharing_plus_total_counts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sharing_plus_total_counts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sharing_plus_total_counts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sharing_plus_total_counts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sharing_plus_fbshare_counts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sharing_plus_fbshare_counts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sharing_plus_fbshare_counts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sharing_plus_fbshare_counts' ) );

