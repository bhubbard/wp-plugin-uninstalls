<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('calendar_today_widget_title');
delete_site_option('calendar_today_widget_title');
delete_option('calendar_upcoming_widget_title');
delete_site_option('calendar_upcoming_widget_title');

