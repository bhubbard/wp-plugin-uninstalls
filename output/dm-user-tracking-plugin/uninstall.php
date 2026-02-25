<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lbakut_options');
delete_site_option('lbakut_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('lbakut_database_management_cron');
wp_clear_scheduled_hook('lbakut_update_browscap');
wp_clear_scheduled_hook('lbakut_do_cache_and_stats');

