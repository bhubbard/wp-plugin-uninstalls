<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smopt_options');
delete_site_option('smopt_options');
delete_option('smopt_version');
delete_site_option('smopt_version');
delete_option('smopt_activation_time');
delete_site_option('smopt_activation_time');

// Clear Cron Jobs
wp_clear_scheduled_hook('smopt_clear_expired_cache');
wp_clear_scheduled_hook('smopt_cleanup_analytics');

