<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('XH_WP_OPTIMIZE_ALL');
delete_site_option('XH_WP_OPTIMIZE_ALL');
delete_option('XH_WP_OPTIMIZE_HEADER');
delete_site_option('XH_WP_OPTIMIZE_HEADER');
delete_option('XH_WP_OPTIMIZE_FOOTER');
delete_site_option('XH_WP_OPTIMIZE_FOOTER');
delete_option('XH_WP_OPTIMIZE_POST');
delete_site_option('XH_WP_OPTIMIZE_POST');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_version_check');
wp_clear_scheduled_hook('wp_update_plugins');
wp_clear_scheduled_hook('wp_update_themes');
wp_clear_scheduled_hook('wp_maybe_auto_update');

