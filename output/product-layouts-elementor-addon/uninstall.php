<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('npla_compare_page_id');
delete_site_option('npla_compare_page_id');
delete_option('npla_wishlist_page_id');
delete_site_option('npla_wishlist_page_id');

