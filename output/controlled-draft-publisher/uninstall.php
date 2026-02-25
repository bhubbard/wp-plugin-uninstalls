<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cdp_log_autoload_fixed');
delete_site_option('cdp_log_autoload_fixed');
delete_option('cdp_log');
delete_site_option('cdp_log');
delete_option('cdp_interval');
delete_site_option('cdp_interval');
delete_option('cdp_post_types');
delete_site_option('cdp_post_types');
delete_option('cdp_logging');
delete_site_option('cdp_logging');
delete_option('cdp_posts_per_run');
delete_site_option('cdp_posts_per_run');
delete_option('cdp_categories');
delete_site_option('cdp_categories');

// Delete Transients
delete_transient('cdp_last_publish_error');
delete_site_transient('cdp_last_publish_error');

// Clear Cron Jobs
wp_clear_scheduled_hook('cdp_publish_event');

