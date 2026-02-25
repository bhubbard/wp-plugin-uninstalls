<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('total_reviews_google_api_key');
delete_site_option('total_reviews_google_api_key');
delete_option('total_reviews');
delete_site_option('total_reviews');
delete_option('total_reviews_active');
delete_site_option('total_reviews_active');
delete_option('fbrev_active');
delete_site_option('fbrev_active');
delete_option('total_reviews_language');
delete_site_option('total_reviews_language');
delete_option('total_reviews_version');
delete_site_option('total_reviews_version');

