<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spcr_db_version');
delete_site_option('spcr_db_version');
delete_option('spcr_settings');
delete_site_option('spcr_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('spcr_cleanup_old_data');

