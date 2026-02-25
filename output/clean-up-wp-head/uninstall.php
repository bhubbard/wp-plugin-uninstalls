<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clean_up_rsd_link');
delete_site_option('clean_up_rsd_link');
delete_option('clean_up_wlwmanifest_link');
delete_site_option('clean_up_wlwmanifest_link');
delete_option('clean_up_wp_generator');
delete_site_option('clean_up_wp_generator');
delete_option('clean_up_start_post_rel_link');
delete_site_option('clean_up_start_post_rel_link');
delete_option('clean_up_index_rel_link');
delete_site_option('clean_up_index_rel_link');
delete_option('clean_up_adjacent_posts_rel_link');
delete_site_option('clean_up_adjacent_posts_rel_link');
delete_option('clean_up_feed_links');
delete_site_option('clean_up_feed_links');
delete_option('clean_up_feed_links_extra');
delete_site_option('clean_up_feed_links_extra');
delete_option('clean_up_feeds');
delete_site_option('clean_up_feeds');
delete_option('easy_excerpt');
delete_site_option('easy_excerpt');

