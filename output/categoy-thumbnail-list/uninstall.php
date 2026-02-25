<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('category-thumbnail-list_order');
delete_site_option('category-thumbnail-list_order');
delete_option('category-thumbnail-list_ordertype');
delete_site_option('category-thumbnail-list_ordertype');

