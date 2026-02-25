<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('grd_token');
delete_site_option('grd_token');
delete_option('grd_user');
delete_site_option('grd_user');
delete_option('grd_repo');
delete_site_option('grd_repo');

