<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sc_sortable_columns_posts');
delete_site_option('sc_sortable_columns_posts');
delete_option('sc_sortable_columns_pages');
delete_site_option('sc_sortable_columns_pages');
delete_option('sortcols_sortable_columns_posts');
delete_site_option('sortcols_sortable_columns_posts');
delete_option('sortcols_sortable_columns_pages');
delete_site_option('sortcols_sortable_columns_pages');

