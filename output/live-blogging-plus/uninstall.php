<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('liveblogging_method');
delete_site_option('liveblogging_method');
delete_option('liveblogging_update_effect');
delete_site_option('liveblogging_update_effect');
delete_option('liveblogging_enable_twitter');
delete_site_option('liveblogging_enable_twitter');
delete_option('liveblogging_disable_twitter_comments');
delete_site_option('liveblogging_disable_twitter_comments');
delete_option('liveblogging_comments');
delete_site_option('liveblogging_comments');
delete_option('liveblogging_date_style');
delete_site_option('liveblogging_date_style');
delete_option('liveblogging_style');
delete_site_option('liveblogging_style');
delete_option('liveblogging_meteor_host');
delete_site_option('liveblogging_meteor_host');
delete_option('liveblogging_meteor_controller');
delete_site_option('liveblogging_meteor_controller');
delete_option('liveblogging_meteor_controller_port');
delete_site_option('liveblogging_meteor_controller_port');
delete_option('liveblogging_id');
delete_site_option('liveblogging_id');
delete_option('liveblogging_unhooks');
delete_site_option('liveblogging_unhooks');
delete_option('liveblogging_timed_update_freq');
delete_site_option('liveblogging_timed_update_freq');
delete_option('liveblogging_date');
delete_site_option('liveblogging_date');
delete_option('liveblogging_twitter_token');
delete_site_option('liveblogging_twitter_token');
delete_option('liveblogging_twitter_request_token');
delete_site_option('liveblogging_twitter_request_token');
delete_option('liveblogging_twitter_request_secret');
delete_site_option('liveblogging_twitter_request_secret');
delete_option('liveblog_assigned_ids');
delete_site_option('liveblog_assigned_ids');
delete_option('liveblogging_twitter_secret');
delete_site_option('liveblogging_twitter_secret');
delete_option('liveblogging_imported_tweets');
delete_site_option('liveblogging_imported_tweets');

// Clear Cron Jobs
wp_clear_scheduled_hook('live_blogging_check_twitter');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_liveblog_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_liveblog_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_liveblog_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_liveblog_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_liveblog' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_liveblog' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_liveblog' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_liveblog' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_liveblogging_tweeted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_liveblogging_tweeted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_liveblogging_tweeted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_liveblogging_tweeted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'liveblogging_hashtag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'liveblogging_hashtag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'liveblogging_hashtag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'liveblogging_hashtag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_liveblogging_deleted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_liveblogging_deleted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_liveblogging_deleted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_liveblogging_deleted' ) );

