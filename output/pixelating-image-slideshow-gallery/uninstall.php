<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pisg_title');
delete_site_option('pisg_title');
delete_option('pisg_maxsquare');
delete_site_option('pisg_maxsquare');
delete_option('pisg_duration');
delete_site_option('pisg_duration');
delete_option('pisg_slidespeed');
delete_site_option('pisg_slidespeed');
delete_option('pisg_random');
delete_site_option('pisg_random');
delete_option('pisg_type');
delete_site_option('pisg_type');

