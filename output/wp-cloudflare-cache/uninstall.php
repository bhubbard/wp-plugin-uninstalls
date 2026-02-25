<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpcc_config');
delete_site_option('wpcc_config');
delete_option('wpcc_options');
delete_site_option('wpcc_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpcc_purge_cache');

