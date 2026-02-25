<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hashtag_name_one');
delete_site_option('hashtag_name_one');
delete_option('hashtag_post_type_query_one');
delete_site_option('hashtag_post_type_query_one');
delete_option('hashtag_post_type_category_query_one');
delete_site_option('hashtag_post_type_category_query_one');
delete_option('hashtag_name_two');
delete_site_option('hashtag_name_two');
delete_option('hashtag_post_type_query_two');
delete_site_option('hashtag_post_type_query_two');
delete_option('hashtag_post_type_category_query_two');
delete_site_option('hashtag_post_type_category_query_two');
delete_option('hashtag_name_three');
delete_site_option('hashtag_name_three');
delete_option('hashtag_post_type_query_three');
delete_site_option('hashtag_post_type_query_three');
delete_option('hashtag_post_type_category_query_three');
delete_site_option('hashtag_post_type_category_query_three');
delete_option('hashtag_name_four');
delete_site_option('hashtag_name_four');
delete_option('hashtag_post_type_query_four');
delete_site_option('hashtag_post_type_query_four');
delete_option('hashtag_post_type_category_query_four');
delete_site_option('hashtag_post_type_category_query_four');
delete_option('hashtag_name_five');
delete_site_option('hashtag_name_five');
delete_option('hashtag_post_type_query_five');
delete_site_option('hashtag_post_type_query_five');
delete_option('hashtag_post_type_category_query_five');
delete_site_option('hashtag_post_type_category_query_five');

