<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ws_td_username');
delete_site_option('ws_td_username');
delete_option('ws_td_password');
delete_site_option('ws_td_password');
delete_option('ws_td_last_check');
delete_site_option('ws_td_last_check');
delete_option('ws_td_pub_day');
delete_site_option('ws_td_pub_day');
delete_option('ws_td_freq');
delete_site_option('ws_td_freq');
delete_option('ws_td_last_tweet');
delete_site_option('ws_td_last_tweet');
delete_option('ws_td_num_tweets');
delete_site_option('ws_td_num_tweets');
delete_option('ws_td_includeRTs');
delete_site_option('ws_td_includeRTs');
delete_option('ws_td_drop_replies');
delete_site_option('ws_td_drop_replies');
delete_option('ws_td_min_tweets');
delete_site_option('ws_td_min_tweets');
delete_option('ws_td_chrono');
delete_site_option('ws_td_chrono');
delete_option('ws_td_title');
delete_site_option('ws_td_title');
delete_option('ws_td_excerpt');
delete_site_option('ws_td_excerpt');
delete_option('ws_td_pub_time');
delete_site_option('ws_td_pub_time');
delete_option('ws_td_status');
delete_site_option('ws_td_status');
delete_option('ws_td_category');
delete_site_option('ws_td_category');
delete_option('ws_td_author');
delete_site_option('ws_td_author');
delete_option('ws_td_post_tags');
delete_site_option('ws_td_post_tags');
delete_option('ws_td_showtime');
delete_site_option('ws_td_showtime');
delete_option('ws_td_showdate');
delete_site_option('ws_td_showdate');
delete_option('ws_td_conskey');
delete_site_option('ws_td_conskey');
delete_option('ws_td_conssecret');
delete_site_option('ws_td_conssecret');
delete_option('ws_td_acctoken');
delete_site_option('ws_td_acctoken');
delete_option('ws_td_accsecret');
delete_site_option('ws_td_accsecret');
delete_option('ws_td_error');
delete_site_option('ws_td_error');
delete_option('ws_td_dateFormat');
delete_site_option('ws_td_dateFormat');

// Clear Cron Jobs
wp_clear_scheduled_hook('ws_td_digest_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ws_tweeted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ws_tweeted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ws_tweeted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ws_tweeted' ) );

