<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spgs_settings');
delete_site_option('spgs_settings');
delete_option('spgs_version');
delete_site_option('spgs_version');
delete_option('spgs_functions');
delete_site_option('spgs_functions');

// Clear Cron Jobs
wp_clear_scheduled_hook('spgs_scheduled_tasks');

