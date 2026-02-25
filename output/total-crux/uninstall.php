<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tcrux_db_version');
delete_site_option('tcrux_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('tcrux_cron_cleanup_old_data');
wp_clear_scheduled_hook('tcrux_cron_cache_urls');

