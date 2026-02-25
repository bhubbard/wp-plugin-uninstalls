<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scott_database');
delete_site_option('scott_database');
delete_option('scott_values');
delete_site_option('scott_values');
delete_option('widget_scott_timer');
delete_site_option('widget_scott_timer');
delete_option('scott_timer_version');
delete_site_option('scott_timer_version');
delete_option('afdn_countdowntracker');
delete_site_option('afdn_countdowntracker');
delete_option('afdn_countdownOptions');
delete_site_option('afdn_countdownOptions');

