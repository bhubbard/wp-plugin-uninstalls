<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ads_exclude_ids');
delete_site_option('ads_exclude_ids');
delete_option('ads_main_enable');
delete_site_option('ads_main_enable');
delete_option('ads_post_top_enable');
delete_site_option('ads_post_top_enable');
delete_option('ads_post_top_desc');
delete_site_option('ads_post_top_desc');
delete_option('ads_post_top_corner_enable');
delete_site_option('ads_post_top_corner_enable');
delete_option('ads_post_top_corner_desc');
delete_site_option('ads_post_top_corner_desc');
delete_option('ads_post_first_p_enable');
delete_site_option('ads_post_first_p_enable');
delete_option('ads_post_first_p_desc');
delete_site_option('ads_post_first_p_desc');
delete_option('ads_post_bottom_enable');
delete_site_option('ads_post_bottom_enable');
delete_option('ads_post_bottom_desc');
delete_site_option('ads_post_bottom_desc');
delete_option('ads_page_top_enable');
delete_site_option('ads_page_top_enable');
delete_option('ads_page_top_desc');
delete_site_option('ads_page_top_desc');
delete_option('ads_page_bottom_enable');
delete_site_option('ads_page_bottom_enable');
delete_option('ads_page_bottom_desc');
delete_site_option('ads_page_bottom_desc');
delete_option('ads_shortcode_enable');
delete_site_option('ads_shortcode_enable');
delete_option('ads_shortcode_desc');
delete_site_option('ads_shortcode_desc');

