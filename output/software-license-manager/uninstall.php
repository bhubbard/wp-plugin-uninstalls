<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slm_plugin_options');
delete_site_option('slm_plugin_options');
delete_option('wp_lic_mgr_db_version');
delete_site_option('wp_lic_mgr_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('slm_daily_cron_event');

