<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fpwl_filter_with_list');
delete_site_option('fpwl_filter_with_list');
delete_option('fpwl_search_bar_show');
delete_site_option('fpwl_search_bar_show');
delete_option('fpwl_category_show');
delete_site_option('fpwl_category_show');
delete_option('fpwl_filter_cat_text');
delete_site_option('fpwl_filter_cat_text');
delete_option('fpwl_tag_show');
delete_site_option('fpwl_tag_show');
delete_option('fpwl_filter_tag_text');
delete_site_option('fpwl_filter_tag_text');
delete_option('fpwl_filter_feature_image_display');
delete_site_option('fpwl_filter_feature_image_display');
delete_option('fpwl_filter_category_display');
delete_site_option('fpwl_filter_category_display');
delete_option('fpwl_filter_content_display');
delete_site_option('fpwl_filter_content_display');
delete_option('fpwl_filter_date_display');
delete_site_option('fpwl_filter_date_display');
delete_option('fpwl_filter_author_display');
delete_site_option('fpwl_filter_author_display');
delete_option('fpwl_filter_per_page_display');
delete_site_option('fpwl_filter_per_page_display');
delete_option('artical_filter_per_page_display');
delete_site_option('artical_filter_per_page_display');

