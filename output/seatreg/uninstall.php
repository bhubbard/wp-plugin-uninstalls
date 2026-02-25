<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seatreg_db_current_version');
delete_site_option('seatreg_db_current_version');
delete_option('seatreg_trigger_side_effect');
delete_site_option('seatreg_trigger_side_effect');

// Clear Cron Jobs
wp_clear_scheduled_hook('seatreg_pending_booking_expiration');

