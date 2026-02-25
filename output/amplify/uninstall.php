<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_AMPLIFY_API_KEY');
delete_site_option('_AMPLIFY_API_KEY');
delete_option('_AMPLIFY_API_SECRET');
delete_site_option('_AMPLIFY_API_SECRET');
delete_option('_AMPLIFY_PROJECT_ID');
delete_site_option('_AMPLIFY_PROJECT_ID');
delete_option('amplify_login_loginform');
delete_site_option('amplify_login_loginform');
delete_option('amplify_login_loginform_widgetId');
delete_site_option('amplify_login_loginform_widgetId');
delete_option('amplify_login_registration');
delete_site_option('amplify_login_registration');
delete_option('amplify_login_registration_widgetId');
delete_site_option('amplify_login_registration_widgetId');
delete_option('amplify_track_searches');
delete_site_option('amplify_track_searches');
delete_option('amplify_track_posts');
delete_site_option('amplify_track_posts');
delete_option('amplify_track_pages');
delete_site_option('amplify_track_pages');
delete_option('amplify_track_archives');
delete_site_option('amplify_track_archives');
delete_option('amplify_opengraphtag');
delete_site_option('amplify_opengraphtag');
delete_option('amplify_twittercard');
delete_site_option('amplify_twittercard');
delete_option('amplify_twittername');
delete_site_option('amplify_twittername');
delete_option('amplify_fb_app_id');
delete_site_option('amplify_fb_app_id');
delete_option('amplify_facebook_admins');
delete_site_option('amplify_facebook_admins');
delete_option('amplify_loginprofile');
delete_site_option('amplify_loginprofile');
delete_option('amplify_login_abovecomment');
delete_site_option('amplify_login_abovecomment');
delete_option('amplify_login_abovecomment_widgetId');
delete_site_option('amplify_login_abovecomment_widgetId');
delete_option('amplify_login_sidebar');
delete_site_option('amplify_login_sidebar');
delete_option('amplify_login_sidebar_widgetId');
delete_site_option('amplify_login_sidebar_widgetId');
delete_option('amplify_share_above_post');
delete_site_option('amplify_share_above_post');
delete_option('amplify_share_above_post_widgetId');
delete_site_option('amplify_share_above_post_widgetId');
delete_option('amplify_share_below_post');
delete_site_option('amplify_share_below_post');
delete_option('amplify_share_below_post_widgetId');
delete_site_option('amplify_share_below_post_widgetId');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'amplifyUserId' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'amplifyUserId' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'amplifyUserId' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'amplifyUserId' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'email' ) );

