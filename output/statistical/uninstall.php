<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('no_of_days_since_first_post');
delete_site_option('no_of_days_since_first_post');
delete_option('total_no_of_words_in_blog');
delete_site_option('total_no_of_words_in_blog');
delete_option('total_no_posts_since_start');
delete_site_option('total_no_posts_since_start');
delete_option('avg_words_published_per_day');
delete_site_option('avg_words_published_per_day');

