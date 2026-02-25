<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('max_items');
delete_site_option('max_items');
delete_option('no_of_cols');
delete_site_option('no_of_cols');
delete_option('cat_order');
delete_site_option('cat_order');

