<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpwt_settings');
delete_site_option('wpwt_settings');
delete_option('wpwt_schedule');
delete_site_option('wpwt_schedule');
delete_option('wpwt_meetups');
delete_site_option('wpwt_meetups');

