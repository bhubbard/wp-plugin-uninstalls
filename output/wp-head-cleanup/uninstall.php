<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('remove_rsd_link');
delete_site_option('remove_rsd_link');
delete_option('remove_wp_generator');
delete_site_option('remove_wp_generator');
delete_option('remove_feed_links');
delete_site_option('remove_feed_links');
delete_option('remove_feed_links_extra');
delete_site_option('remove_feed_links_extra');
delete_option('remove_index_rel_link');
delete_site_option('remove_index_rel_link');
delete_option('remove_wlwmanifest_link');
delete_site_option('remove_wlwmanifest_link');
delete_option('remove_parent_post_rel_link');
delete_site_option('remove_parent_post_rel_link');
delete_option('remove_start_post_rel_link');
delete_site_option('remove_start_post_rel_link');
delete_option('remove_adjacent_posts_rel_link');
delete_site_option('remove_adjacent_posts_rel_link');
delete_option('remove_wp_shortlink_wp_head');
delete_site_option('remove_wp_shortlink_wp_head');

