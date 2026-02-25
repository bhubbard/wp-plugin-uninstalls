<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wds_google_connect_app_name');
delete_site_option('wds_google_connect_app_name');
delete_option('wds_google_connect_client_id');
delete_site_option('wds_google_connect_client_id');
delete_option('wds_google_connect_client_secret');
delete_site_option('wds_google_connect_client_secret');
delete_option('wds_google_connect_redirect_url');
delete_site_option('wds_google_connect_redirect_url');
delete_option('wds_google_connect_developer_key');
delete_site_option('wds_google_connect_developer_key');
delete_option('wds_google_connect_badge_page_id');
delete_site_option('wds_google_connect_badge_page_id');
delete_option('wds_google_connect_badge_name');
delete_site_option('wds_google_connect_badge_name');
delete_option('wds_google_connect_badge_type');
delete_site_option('wds_google_connect_badge_type');
delete_option('wds_google_connect_badge_lang');
delete_site_option('wds_google_connect_badge_lang');
delete_option('wds_google_connect_import_author');
delete_site_option('wds_google_connect_import_author');
delete_option('wds_google_connect_sync_schedule');
delete_site_option('wds_google_connect_sync_schedule');
delete_option('wds_google_connect_post_type');
delete_site_option('wds_google_connect_post_type');
delete_option('wds_google_connect_post_status');
delete_site_option('wds_google_connect_post_status');
delete_option('wds_google_connect_category');
delete_site_option('wds_google_connect_category');
delete_option('wds_google_connect_tags');
delete_site_option('wds_google_connect_tags');
delete_option('wds_google_connect_hash_tags');
delete_site_option('wds_google_connect_hash_tags');
delete_option('wds_google_connect_hash_tags_2_tags');
delete_site_option('wds_google_connect_hash_tags_2_tags');
delete_option('wds_google_connect_wp_comments');
delete_site_option('wds_google_connect_wp_comments');
delete_option('wds_google_connect_show_glink');
delete_site_option('wds_google_connect_show_glink');
delete_option('wds_google_connect_gcomments');
delete_site_option('wds_google_connect_gcomments');
delete_option('wds_google_connect_ghost_users');
delete_site_option('wds_google_connect_ghost_users');
delete_option('wds_google_connect_bp_login');
delete_site_option('wds_google_connect_bp_login');
delete_option('wds_google_connect_bp_profile');
delete_site_option('wds_google_connect_bp_profile');
delete_option('wds_google_connect_bp_registration');
delete_site_option('wds_google_connect_bp_registration');
delete_option('wds_google_connect_bp_required');
delete_site_option('wds_google_connect_bp_required');
delete_option('wds_google_connect_bp_activity');
delete_site_option('wds_google_connect_bp_activity');
delete_option('wds_google_connect_bp_activity_comments');
delete_site_option('wds_google_connect_bp_activity_comments');
delete_option('wds_google_connect_bp_ghost_users');
delete_site_option('wds_google_connect_bp_ghost_users');
delete_option('wds_google_connect_consumer_key');
delete_site_option('wds_google_connect_consumer_key');
delete_option('wds_google_connect_consumer_secret');
delete_site_option('wds_google_connect_consumer_secret');

// Clear Cron Jobs
wp_clear_scheduled_hook('wds_google_connect_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wds_google_connect_bp_activity_import' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wds_google_connect_bp_activity_import' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wds_google_connect_bp_activity_import' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wds_google_connect_bp_activity_import' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wds_google_connect_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wds_google_connect_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wds_google_connect_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wds_google_connect_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wds_google_connect_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wds_google_connect_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wds_google_connect_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wds_google_connect_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'display_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'display_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'display_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'display_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wds_google_connect_photo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wds_google_connect_photo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wds_google_connect_photo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wds_google_connect_photo' ) );

