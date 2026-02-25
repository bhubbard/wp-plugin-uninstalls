<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ra_featured_admin_show');
delete_site_option('ra_featured_admin_show');
delete_option('ra_featured_admin_keep');
delete_site_option('ra_featured_admin_keep');
delete_option('ra_featured_admin_feed');
delete_site_option('ra_featured_admin_feed');

