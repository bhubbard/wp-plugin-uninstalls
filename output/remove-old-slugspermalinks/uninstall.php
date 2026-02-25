<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alg_slugs_manager_plugin_version');
delete_site_option('alg_slugs_manager_plugin_version');
delete_option('alg_remove_old_slugs_on_save_post_enabled');
delete_site_option('alg_remove_old_slugs_on_save_post_enabled');
delete_option('alg_remove_old_slugs_cron_interval');
delete_site_option('alg_remove_old_slugs_cron_interval');
delete_option('alg_sm_regenerate_slugs_post_types');
delete_site_option('alg_sm_regenerate_slugs_post_types');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('alg_remove_old_slugs_cron');

