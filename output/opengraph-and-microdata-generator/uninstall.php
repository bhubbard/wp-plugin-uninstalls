<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpogmcappid');
delete_site_option('wpogmcappid');
delete_option('wpogmcadminid');
delete_site_option('wpogmcadminid');
delete_option('wpogmcthumbnail');
delete_site_option('wpogmcthumbnail');
delete_option('wpogmclocale');
delete_site_option('wpogmclocale');
delete_option('wpogmcwordlimit');
delete_site_option('wpogmcwordlimit');

