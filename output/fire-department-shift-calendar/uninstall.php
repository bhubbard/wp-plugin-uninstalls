<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fd_calendar_shift_start_date');
delete_site_option('fd_calendar_shift_start_date');
delete_option('fd_calendar_shifts');
delete_site_option('fd_calendar_shifts');
delete_option('fd_calendar_schedule_pattern');
delete_site_option('fd_calendar_schedule_pattern');
delete_option('fd_calendar_shift_rotation');
delete_site_option('fd_calendar_shift_rotation');
delete_option('fd_calendar_shift_schedule');
delete_site_option('fd_calendar_shift_schedule');

