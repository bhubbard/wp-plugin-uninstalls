<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('allegro_sync_db_version');
delete_site_option('allegro_sync_db_version');
delete_option('e_strix_allegro_symc_db_version');
delete_site_option('e_strix_allegro_symc_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('e_strix_allegro_symc_cronjob');

