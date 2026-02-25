<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aegis_shield_failed_logins');
delete_site_option('aegis_shield_failed_logins');
delete_option('aegis_shield_cron_enabled');
delete_site_option('aegis_shield_cron_enabled');
delete_option('aegis_shield_cron_frequency');
delete_site_option('aegis_shield_cron_frequency');
delete_option('aegis_shield_last_cron_scan');
delete_site_option('aegis_shield_last_cron_scan');
delete_option('aegis_shield_license_key');
delete_site_option('aegis_shield_license_key');

// Clear Cron Jobs
wp_clear_scheduled_hook('aegis_shield_cron_scan');

