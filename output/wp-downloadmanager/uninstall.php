<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('download_path');
delete_site_option('download_path');
delete_option('download_categories');
delete_site_option('download_categories');
delete_option('download_path_url');
delete_site_option('download_path_url');
delete_option('download_page_url');
delete_site_option('download_page_url');
delete_option('download_nice_permalink');
delete_site_option('download_nice_permalink');
delete_option('download_options');
delete_site_option('download_options');
delete_option('download_method');
delete_site_option('download_method');
delete_option('download_sort');
delete_site_option('download_sort');
delete_option('rss_language');
delete_site_option('rss_language');
delete_option('download_template_header');
delete_site_option('download_template_header');
delete_option('download_template_footer');
delete_site_option('download_template_footer');
delete_option('download_template_pagingheader');
delete_site_option('download_template_pagingheader');
delete_option('download_template_pagingfooter');
delete_site_option('download_template_pagingfooter');
delete_option('download_template_none');
delete_site_option('download_template_none');
delete_option('download_template_category_header');
delete_site_option('download_template_category_header');
delete_option('download_template_category_footer');
delete_site_option('download_template_category_footer');
delete_option('download_template_listing');
delete_site_option('download_template_listing');
delete_option('download_template_embedded');
delete_site_option('download_template_embedded');
delete_option('download_template_download_page_link');
delete_site_option('download_template_download_page_link');
delete_option('download_template_most');
delete_site_option('download_template_most');
delete_option('stats_display');
delete_site_option('stats_display');
delete_option('stats_mostlimit');
delete_site_option('stats_mostlimit');
delete_option('widget_download_recent_downloads');
delete_site_option('widget_download_recent_downloads');
delete_option('widget_download_most_downloaded');
delete_site_option('widget_download_most_downloaded');

