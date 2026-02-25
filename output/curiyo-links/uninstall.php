<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('curiyo_search_page_id');
delete_site_option('curiyo_search_page_id');
delete_option('curiyo_max_links');
delete_site_option('curiyo_max_links');
delete_option('curiyo_link_color');
delete_site_option('curiyo_link_color');
delete_option('curiyo_site_email');
delete_site_option('curiyo_site_email');
delete_option('curiyo_site_logo');
delete_site_option('curiyo_site_logo');
delete_option('curiyo_single_post_on');
delete_site_option('curiyo_single_post_on');
delete_option('curiyo_pages_on');
delete_site_option('curiyo_pages_on');
delete_option('curiyo_home_page_on');
delete_site_option('curiyo_home_page_on');
delete_option('curiyo_tags_on');
delete_site_option('curiyo_tags_on');
delete_option('curiyo_categories_on');
delete_site_option('curiyo_categories_on');
delete_option('curiyo_author_archives_on');
delete_site_option('curiyo_author_archives_on');
delete_option('curiyo_search_results_on');
delete_site_option('curiyo_search_results_on');
delete_option('curiyo_archives_on');
delete_site_option('curiyo_archives_on');
delete_option('curiyo_publish_to_curiyo');
delete_site_option('curiyo_publish_to_curiyo');

