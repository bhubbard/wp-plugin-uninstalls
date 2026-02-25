<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wgmbr_access_token');
delete_site_option('wgmbr_access_token');
delete_option('wgmbr_available_locations');
delete_site_option('wgmbr_available_locations');
delete_option('wgmbr_account_id');
delete_site_option('wgmbr_account_id');
delete_option('wgmbr_location_id');
delete_site_option('wgmbr_location_id');
delete_option('wgmbr_client_id');
delete_site_option('wgmbr_client_id');
delete_option('wgmbr_client_secret');
delete_site_option('wgmbr_client_secret');
delete_option('wgmbr_redirect_uri');
delete_site_option('wgmbr_redirect_uri');
delete_option('wgmbr_refresh_token');
delete_site_option('wgmbr_refresh_token');
delete_option('wgmbr_token_expires');
delete_site_option('wgmbr_token_expires');
delete_option('wgmbr_radius_card');
delete_site_option('wgmbr_radius_card');
delete_option('wgmbr_color_card_bg');
delete_site_option('wgmbr_color_card_bg');
delete_option('wgmbr_color_star');
delete_site_option('wgmbr_color_star');
delete_option('wgmbr_color_text_primary');
delete_site_option('wgmbr_color_text_primary');
delete_option('wgmbr_color_text_resume');
delete_site_option('wgmbr_color_text_resume');
delete_option('wgmbr_color_accent');
delete_site_option('wgmbr_color_accent');
delete_option('wgmbr_last_token_error');
delete_site_option('wgmbr_last_token_error');
delete_option('wgmbr_last_error');
delete_site_option('wgmbr_last_error');
delete_option('wgmbr_error_logs');
delete_site_option('wgmbr_error_logs');

// Delete Transients
delete_transient('wgmbr_reviews_cache');
delete_site_transient('wgmbr_reviews_cache');
delete_transient('wgmbr_avg_rating_cache');
delete_site_transient('wgmbr_avg_rating_cache');
delete_transient('wgmbr_last_sync_time');
delete_site_transient('wgmbr_last_sync_time');
delete_transient('wgmbr_oauth_state');
delete_site_transient('wgmbr_oauth_state');
delete_transient('wgmbr_accounts_cache');
delete_site_transient('wgmbr_accounts_cache');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wgmbr_review_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wgmbr_review_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wgmbr_review_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wgmbr_review_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wgmbr_reviewer_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wgmbr_reviewer_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wgmbr_reviewer_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wgmbr_reviewer_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wgmbr_reviewer_photo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wgmbr_reviewer_photo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wgmbr_reviewer_photo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wgmbr_reviewer_photo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wgmbr_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wgmbr_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wgmbr_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wgmbr_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wgmbr_job' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wgmbr_job' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wgmbr_job' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wgmbr_job' ) );

