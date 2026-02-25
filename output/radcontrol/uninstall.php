<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adcontrol_settings');
delete_site_option('adcontrol_settings');
delete_option('adcontrol_advanced_settings');
delete_site_option('adcontrol_advanced_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('adcontrol_cron_status');

