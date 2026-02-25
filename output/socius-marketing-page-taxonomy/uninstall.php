<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smct_category_page_id');
delete_site_option('smct_category_page_id');
delete_option('smct_display_page_titles');
delete_site_option('smct_display_page_titles');
delete_option('smct_number_of_columns');
delete_site_option('smct_number_of_columns');
delete_option('smct_category_display_layout');
delete_site_option('smct_category_display_layout');
delete_option('smct_area_page_id');
delete_site_option('smct_area_page_id');
delete_option('smct_custom_category_archive_slug');
delete_site_option('smct_custom_category_archive_slug');
delete_option('smct_custom_areas_archive_slug');
delete_site_option('smct_custom_areas_archive_slug');
delete_option('smct_width_of_pages');
delete_site_option('smct_width_of_pages');
delete_option('smct_archive_container_class');
delete_site_option('smct_archive_container_class');
delete_option('smct_page_title_source');
delete_site_option('smct_page_title_source');
delete_option('smct_alternate_page_title');
delete_site_option('smct_alternate_page_title');
delete_option('smct_category_page_title');
delete_site_option('smct_category_page_title');
delete_option('smct_area_page_title');
delete_site_option('smct_area_page_title');
delete_option('smct_category_page_name');
delete_site_option('smct_category_page_name');
delete_option('smct_area_page_name');
delete_site_option('smct_area_page_name');
delete_option('smct_paginate_archives');
delete_site_option('smct_paginate_archives');
delete_option('smct_custom_css');
delete_site_option('smct_custom_css');

