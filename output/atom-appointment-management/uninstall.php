<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('atom_aam_settings');
delete_site_option('atom_aam_settings');
delete_option('atom_aam_settings_rulebased');
delete_site_option('atom_aam_settings_rulebased');
delete_option('atom_aam_settings_individual');
delete_site_option('atom_aam_settings_individual');
delete_option('atom_aam_settings_email');
delete_site_option('atom_aam_settings_email');
delete_option('atom_aam_version');
delete_site_option('atom_aam_version');

// Delete Transients
delete_transient('aam_admin_notification_badge');
delete_site_transient('aam_admin_notification_badge');
delete_transient('atom_appointment_transient_minmaxtime');
delete_site_transient('atom_appointment_transient_minmaxtime');

// Clear Cron Jobs
wp_clear_scheduled_hook('aam_async_appointment_confirmed_tasks');
wp_clear_scheduled_hook('aam_async_appointment_cancelled_tasks');
wp_clear_scheduled_hook('aam_daily_cronjob');
wp_clear_scheduled_hook('aam_async_after_booking_tasks');

