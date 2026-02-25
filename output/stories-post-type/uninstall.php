<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stories_pt_prefill_taxonomies');
delete_site_option('stories_pt_prefill_taxonomies');
delete_option('stories_pt_category_order');
delete_site_option('stories_pt_category_order');
delete_option('stories_pt_sitemap_priority');
delete_site_option('stories_pt_sitemap_priority');
delete_option('stories_pt_sitemap_frequency');
delete_site_option('stories_pt_sitemap_frequency');

