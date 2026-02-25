<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sitecounter_start');
delete_site_option('sitecounter_start');
delete_option('sitecounter_cookies');
delete_site_option('sitecounter_cookies');
delete_option('sitecounter_help');
delete_site_option('sitecounter_help');
delete_option('sitecounter_visit_day');
delete_site_option('sitecounter_visit_day');

