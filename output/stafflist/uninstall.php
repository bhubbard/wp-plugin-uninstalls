<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stafflist_rename_noresults');
delete_site_option('stafflist_rename_noresults');
delete_option('stafflist_rename_page');
delete_site_option('stafflist_rename_page');
delete_option('stafflist_rename_results');
delete_site_option('stafflist_rename_results');
delete_option('stafflist_rename_searchdir');
delete_site_option('stafflist_rename_searchdir');

