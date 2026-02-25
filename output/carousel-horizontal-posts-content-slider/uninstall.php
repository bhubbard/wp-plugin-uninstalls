<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tchpcs_displayimage');
delete_site_option('tchpcs_displayimage');
delete_option('tchpcs_word_limit');
delete_site_option('tchpcs_word_limit');
delete_option('tchpcs_query_posts_showposts');
delete_site_option('tchpcs_query_posts_showposts');
delete_option('tchpcs_query_posts_orderby');
delete_site_option('tchpcs_query_posts_orderby');
delete_option('tchpcs_query_posts_order');
delete_site_option('tchpcs_query_posts_order');
delete_option('tchpcs_query_posts_category');
delete_site_option('tchpcs_query_posts_category');

