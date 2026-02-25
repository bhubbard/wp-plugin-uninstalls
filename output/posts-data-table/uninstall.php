<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('posts-table-search-sort-setup-wizard_completed');
delete_site_option('posts-table-search-sort-setup-wizard_completed');

