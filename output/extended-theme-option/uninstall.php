<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpeto_admng');
delete_site_option('wpeto_admng');
delete_option('wpeto_version');
delete_site_option('wpeto_version');
delete_option('wpeto_deldata');
delete_site_option('wpeto_deldata');

