<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('feedbackvault_redirect_url');
delete_site_option('feedbackvault_redirect_url');
delete_option('feedbackvault_default_status');
delete_site_option('feedbackvault_default_status');
delete_option('feedbackvault_reviews_per_page');
delete_site_option('feedbackvault_reviews_per_page');
delete_option('feedbackvault_google_api_key');
delete_site_option('feedbackvault_google_api_key');
delete_option('feedbackvault_google_place_id');
delete_site_option('feedbackvault_google_place_id');
delete_option('feedbackvault_google_cache_duration');
delete_site_option('feedbackvault_google_cache_duration');
delete_option('feedbackvault_trustpilot_url');
delete_site_option('feedbackvault_trustpilot_url');
delete_option('feedbackvault_trustpilot_cache_duration');
delete_site_option('feedbackvault_trustpilot_cache_duration');
delete_option('feedbackvault_trustpilot_max_reviews');
delete_site_option('feedbackvault_trustpilot_max_reviews');
delete_option('feedbackvault_show_avatars');
delete_site_option('feedbackvault_show_avatars');
delete_option('feedbackvault_show_dates');
delete_site_option('feedbackvault_show_dates');
delete_option('feedbackvault_show_source');
delete_site_option('feedbackvault_show_source');
delete_option('feedbackvault_excerpt_length');
delete_site_option('feedbackvault_excerpt_length');
delete_option('feedbackvault_enable_load_more');
delete_site_option('feedbackvault_enable_load_more');
delete_option('feedbackvault_show_review_form_when_empty');
delete_site_option('feedbackvault_show_review_form_when_empty');
delete_option('feedbackvault_auto_load_more');
delete_site_option('feedbackvault_auto_load_more');
delete_option('feedbackvault_show_animations');
delete_site_option('feedbackvault_show_animations');
delete_option('feedbackvault_lazy_load');
delete_site_option('feedbackvault_lazy_load');
delete_option('feedbackvault_primary_color');
delete_site_option('feedbackvault_primary_color');
delete_option('feedbackvault_star_color');
delete_site_option('feedbackvault_star_color');
delete_option('feedbackvault_text_color');
delete_site_option('feedbackvault_text_color');
delete_option('feedbackvault_font_family');
delete_site_option('feedbackvault_font_family');
delete_option('feedbackvault_font_size');
delete_site_option('feedbackvault_font_size');
delete_option('feedbackvault_mobile_breakpoint');
delete_site_option('feedbackvault_mobile_breakpoint');
delete_option('feedbackvault_version');
delete_site_option('feedbackvault_version');
delete_option('feedbackvault_activated_time');
delete_site_option('feedbackvault_activated_time');
delete_option('feedbackvault_deactivated_time');
delete_site_option('feedbackvault_deactivated_time');
delete_option('feedbackvault_google_maps_url');
delete_site_option('feedbackvault_google_maps_url');

// Delete Transients
delete_transient('feedbackvault_google_reviews_cache');
delete_site_transient('feedbackvault_google_reviews_cache');
delete_transient('feedbackvault_trustpilot_cache');
delete_site_transient('feedbackvault_trustpilot_cache');
delete_transient('feedbackvault_api_status');
delete_site_transient('feedbackvault_api_status');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_feedbackvault_reviews_%', '_site_transient_feedbackvault_reviews_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_feedbackvault_google_reviews_%', '_site_transient_feedbackvault_google_reviews_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('feedbackvault_daily_sync');
wp_clear_scheduled_hook('feedbackvault_weekly_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_feedbackvault_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_feedbackvault_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_feedbackvault_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_feedbackvault_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_feedbackvault_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_feedbackvault_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_feedbackvault_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_feedbackvault_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_feedbackvault_date_reviewed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_feedbackvault_date_reviewed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_feedbackvault_date_reviewed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_feedbackvault_date_reviewed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_feedbackvault_review_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_feedbackvault_review_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_feedbackvault_review_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_feedbackvault_review_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_feedbackvault_reviewer_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_feedbackvault_reviewer_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_feedbackvault_reviewer_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_feedbackvault_reviewer_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_feedbackvault_reviewer_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_feedbackvault_reviewer_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_feedbackvault_reviewer_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_feedbackvault_reviewer_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_feedbackvault_reviewer_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_feedbackvault_reviewer_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_feedbackvault_reviewer_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_feedbackvault_reviewer_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_feedbackvault_reviewer_location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_feedbackvault_reviewer_location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_feedbackvault_reviewer_location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_feedbackvault_reviewer_location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_feedbackvault_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_feedbackvault_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_feedbackvault_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_feedbackvault_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_feedbackvault_source_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_feedbackvault_source_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_feedbackvault_source_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_feedbackvault_source_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_feedbackvault_source_platform' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_feedbackvault_source_platform' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_feedbackvault_source_platform' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_feedbackvault_source_platform' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_feedbackvault_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_feedbackvault_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_feedbackvault_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_feedbackvault_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_feedbackvault_verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_feedbackvault_verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_feedbackvault_verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_feedbackvault_verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_feedbackvault_replied' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_feedbackvault_replied' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_feedbackvault_replied' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_feedbackvault_replied' ) );

