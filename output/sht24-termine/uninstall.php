<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('show_programm_icons');
delete_site_option('show_programm_icons');
delete_option('ground_ids');
delete_site_option('ground_ids');
delete_option('message_below');
delete_site_option('message_below');
delete_option('show_capacity');
delete_site_option('show_capacity');
delete_option('show_price');
delete_site_option('show_price');

