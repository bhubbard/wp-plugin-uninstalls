<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcsdt_handling_time');
delete_site_option('wcsdt_handling_time');
delete_option('wcsdt_transit_time');
delete_site_option('wcsdt_transit_time');
delete_option('wcsdt_show_handling_times');
delete_site_option('wcsdt_show_handling_times');
delete_option('wcsdt_show_transit_times');
delete_site_option('wcsdt_show_transit_times');

