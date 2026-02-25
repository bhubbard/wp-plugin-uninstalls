<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cocolinksort_links_order');
delete_site_option('cocolinksort_links_order');
delete_option('als_sort_id');
delete_site_option('als_sort_id');
delete_option('als_order_type');
delete_site_option('als_order_type');

