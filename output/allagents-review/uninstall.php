<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('allagentsreviews_review_settings');
delete_site_option('allagentsreviews_review_settings');
delete_option('allagentsreviews_api_key_reviews');
delete_site_option('allagentsreviews_api_key_reviews');
delete_option('allagentsreviews_api_key_overall');
delete_site_option('allagentsreviews_api_key_overall');
delete_option('allagentsreviews_api_url_reviews');
delete_site_option('allagentsreviews_api_url_reviews');
delete_option('allagentsreviews_api_url_overall');
delete_site_option('allagentsreviews_api_url_overall');
delete_option('allagentsreviews_shortcode_container_bg');
delete_site_option('allagentsreviews_shortcode_container_bg');
delete_option('allagentsreviews_shortcode_text_color');
delete_site_option('allagentsreviews_shortcode_text_color');
delete_option('allagentsreviews_widget_background_color');
delete_site_option('allagentsreviews_widget_background_color');
delete_option('allagentsreviews_widget_text_color');
delete_site_option('allagentsreviews_widget_text_color');
delete_option('allagentsreviews_overall_widget_background_color');
delete_site_option('allagentsreviews_overall_widget_background_color');
delete_option('allagentsreviews_overall_widget_text_color');
delete_site_option('allagentsreviews_overall_widget_text_color');

// Delete Transients
delete_transient('allagentsreviews_review_cached_reviews');
delete_site_transient('allagentsreviews_review_cached_reviews');
delete_transient('allagentsreviews_review_cached_reviews_overall');
delete_site_transient('allagentsreviews_review_cached_reviews_overall');

