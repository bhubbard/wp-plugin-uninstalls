<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpis_title');
delete_site_option('wpis_title');
delete_option('wpis_width');
delete_site_option('wpis_width');
delete_option('wpis_height');
delete_site_option('wpis_height');
delete_option('wpis_pause');
delete_site_option('wpis_pause');
delete_option('wpis_random');
delete_site_option('wpis_random');
delete_option('wpis_type');
delete_site_option('wpis_type');
delete_option('wpis_Title');
delete_site_option('wpis_Title');

