<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('endurance_user');
delete_site_option('endurance_user');
delete_option('sumome_site_id');
delete_site_option('sumome_site_id');
delete_option('sumome_hide_dashboard_overlay');
delete_site_option('sumome_hide_dashboard_overlay');
delete_option('sumome_initial_wpdashboard_load_time');
delete_site_option('sumome_initial_wpdashboard_load_time');

