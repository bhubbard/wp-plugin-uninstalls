<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpgqb_username');
delete_site_option('wpgqb_username');
delete_option('wpgqb_userpassword');
delete_site_option('wpgqb_userpassword');
delete_option('wpgqb_timespan');
delete_site_option('wpgqb_timespan');
delete_option('wpgqb_exclude');
delete_site_option('wpgqb_exclude');
delete_option('wpgqb_gaacount');
delete_site_option('wpgqb_gaacount');
delete_option('wpgqb_count');
delete_site_option('wpgqb_count');
delete_option('wpgqb_levels');
delete_site_option('wpgqb_levels');
delete_option('wpgqb_searchbase');
delete_site_option('wpgqb_searchbase');
delete_option('wpgqb_title');
delete_site_option('wpgqb_title');
delete_option('wpgqb_cachettl');
delete_site_option('wpgqb_cachettl');

