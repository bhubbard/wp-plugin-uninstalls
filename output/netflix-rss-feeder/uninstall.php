<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('netflix_rss');
delete_site_option('netflix_rss');
delete_option('netflix_moviesathome');
delete_site_option('netflix_moviesathome');
delete_option('netflix_queue');
delete_site_option('netflix_queue');
delete_option('netflix_notifications');
delete_site_option('netflix_notifications');
delete_option('netflix_recommendations');
delete_site_option('netflix_recommendations');
delete_option('netflix_reviews');
delete_site_option('netflix_reviews');
delete_option('netflix_instant');
delete_site_option('netflix_instant');
delete_option('netflix_moviesathome_number');
delete_site_option('netflix_moviesathome_number');
delete_option('netflix_queue_number');
delete_site_option('netflix_queue_number');
delete_option('netflix_notifications_number');
delete_site_option('netflix_notifications_number');
delete_option('netflix_recommendations_number');
delete_site_option('netflix_recommendations_number');
delete_option('netflix_reviews_number');
delete_site_option('netflix_reviews_number');
delete_option('netflix_instant_number');
delete_site_option('netflix_instant_number');
delete_option('moviesathome_desc');
delete_site_option('moviesathome_desc');
delete_option('queue_desc');
delete_site_option('queue_desc');
delete_option('notifications_desc');
delete_site_option('notifications_desc');
delete_option('recommendations_desc');
delete_site_option('recommendations_desc');
delete_option('reviews_desc');
delete_site_option('reviews_desc');
delete_option('instant_desc');
delete_site_option('instant_desc');

