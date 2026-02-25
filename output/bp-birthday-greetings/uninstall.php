<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bp-dob');
delete_site_option('bp-dob');
delete_option('bp-dp-width');
delete_site_option('bp-dp-width');
delete_option('bp-dp-height');
delete_site_option('bp-dp-height');
delete_option('bp-dp-type');
delete_site_option('bp-dp-type');

// Clear Cron Jobs
wp_clear_scheduled_hook('bp_birthday_daily_event');

