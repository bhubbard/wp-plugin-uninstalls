<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('developer_sitemap_options');
delete_site_option('developer_sitemap_options');

// Delete Transients
delete_transient('developer_sitemap_cache_index');
delete_site_transient('developer_sitemap_cache_index');
delete_transient('developer_sitemap_cache_post');
delete_site_transient('developer_sitemap_cache_post');
delete_transient('developer_sitemap_cache_page');
delete_site_transient('developer_sitemap_cache_page');
delete_transient('developer_sitemap_cache_product');
delete_site_transient('developer_sitemap_cache_product');
delete_transient('developer_sitemap_cache_taxonomy');
delete_site_transient('developer_sitemap_cache_taxonomy');
delete_transient('developer_sitemap_cache_author');
delete_site_transient('developer_sitemap_cache_author');

