<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ultimate-db-skip-premium');
delete_site_option('ultimate-db-skip-premium');
delete_option('ultimate_db_manager_global_settings');
delete_site_option('ultimate_db_manager_global_settings');
delete_option('ultimate_db_global_settings');
delete_site_option('ultimate_db_global_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('ultimate_db_cron_hook');

