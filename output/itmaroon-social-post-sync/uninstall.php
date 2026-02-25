<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('postgetType');
delete_site_option('postgetType');
delete_option('itmar_facebook_selected_page_id');
delete_site_option('itmar_facebook_selected_page_id');
delete_option('itmar_facebook_granted');
delete_site_option('itmar_facebook_granted');
delete_option('itmar_facebook_access_token');
delete_site_option('itmar_facebook_access_token');
delete_option('itmar_facebook_expires_at');
delete_site_option('itmar_facebook_expires_at');
delete_option('itmar_facebook_user');
delete_site_option('itmar_facebook_user');
delete_option('itmar_facebook_pages');
delete_site_option('itmar_facebook_pages');
delete_option('itmar_wait_video');
delete_site_option('itmar_wait_video');
delete_option('itmar_twitter_access_token');
delete_site_option('itmar_twitter_access_token');
delete_option('itmar_twitter_expires_at');
delete_site_option('itmar_twitter_expires_at');
delete_option('itmar_twitter_refresh_token');
delete_site_option('itmar_twitter_refresh_token');
delete_option('itmar_twitter_user');
delete_site_option('itmar_twitter_user');
delete_option('itmar_post_needs_flush');
delete_site_option('itmar_post_needs_flush');
delete_option('itmar_permission_error');
delete_site_option('itmar_permission_error');
delete_option('itmar_ogp_enabled');
delete_site_option('itmar_ogp_enabled');
delete_option('itmar_ogp_site_name');
delete_site_option('itmar_ogp_site_name');
delete_option('itmar_ogp_default_image');
delete_site_option('itmar_ogp_default_image');
delete_option('itmar_ogp_square_image');
delete_site_option('itmar_ogp_square_image');
delete_option('itmar_ogp_twitter_card');
delete_site_option('itmar_ogp_twitter_card');

// Delete Transients
delete_transient('itmar_convert_jobs_cache');
delete_site_transient('itmar_convert_jobs_cache');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'twitter_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'twitter_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'twitter_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'twitter_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'facebook_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'facebook_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'facebook_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'facebook_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'instagram_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'instagram_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'instagram_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'instagram_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'custom_revisions_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'custom_revisions_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'custom_revisions_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'custom_revisions_count' ) );

