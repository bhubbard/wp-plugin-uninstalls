<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_reviews_badge_place_id');
delete_site_option('simple_reviews_badge_place_id');
delete_option('simple_reviews_badge_api_key');
delete_site_option('simple_reviews_badge_api_key');
delete_option('simple_reviews_badge_img_src');
delete_site_option('simple_reviews_badge_img_src');
delete_option('simple_reviews_badge_cache_duration');
delete_site_option('simple_reviews_badge_cache_duration');
delete_option('simple_reviews_badge_review_link');
delete_site_option('simple_reviews_badge_review_link');
delete_option('simple_reviews_badge_schema_description');
delete_site_option('simple_reviews_badge_schema_description');
delete_option('simple_reviews_badge_schema_name');
delete_site_option('simple_reviews_badge_schema_name');
delete_option('simple_reviews_badge_schema_brand');
delete_site_option('simple_reviews_badge_schema_brand');
delete_option('simple_reviews_badge_schema_id');
delete_site_option('simple_reviews_badge_schema_id');
delete_option('simple_reviews_badge_schema_url');
delete_site_option('simple_reviews_badge_schema_url');
delete_option('simple_reviews_badge_use_ajax');
delete_site_option('simple_reviews_badge_use_ajax');

