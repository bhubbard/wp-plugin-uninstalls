<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bp-sitewide-featured-posts-db-version');
delete_site_option('bp-sitewide-featured-posts-db-version');

