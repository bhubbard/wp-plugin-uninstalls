<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mpi_plugin_meta');
delete_site_option('mpi_plugin_meta');
delete_option('mpi_sync_timestamp');
delete_site_option('mpi_sync_timestamp');
delete_option('mpi-settings');
delete_site_option('mpi-settings');
delete_option('mpi_cron_enable');
delete_site_option('mpi_cron_enable');

// Clear Cron Jobs
wp_clear_scheduled_hook('mpi_sync');

