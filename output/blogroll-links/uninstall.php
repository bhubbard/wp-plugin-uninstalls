<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blogroll_links_default_category_slug');
delete_site_option('blogroll_links_default_category_slug');
delete_option('blogroll_links_default_sort_by');
delete_site_option('blogroll_links_default_sort_by');
delete_option('blogroll_links_default_sort_order');
delete_site_option('blogroll_links_default_sort_order');

