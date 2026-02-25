<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('caldav2ics_calendar_urls');
delete_site_option('caldav2ics_calendar_urls');
delete_option('caldav2ics_calendar_users');
delete_site_option('caldav2ics_calendar_users');
delete_option('caldav2ics_calendar_passwords');
delete_site_option('caldav2ics_calendar_passwords');
delete_option('caldav2ics_calendar_files');
delete_site_option('caldav2ics_calendar_files');
delete_option('caldav2ics_calendar_excludes');
delete_site_option('caldav2ics_calendar_excludes');

// Delete Transients
delete_transient('caldav2ics_upgrade');
delete_site_transient('caldav2ics_upgrade');
delete_transient('caldav2ics');
delete_site_transient('caldav2ics');

// Clear Cron Jobs
wp_clear_scheduled_hook('bl_cron_hook');

