<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('my_pagerank_picture_width');
delete_site_option('my_pagerank_picture_width');
delete_option('my_pagerank_text_color');
delete_site_option('my_pagerank_text_color');
delete_option('my_pagerank_font_size');
delete_site_option('my_pagerank_font_size');
delete_option('my_pagerank_caption');
delete_site_option('my_pagerank_caption');
delete_option('my_pagerank_append_post');
delete_site_option('my_pagerank_append_post');

