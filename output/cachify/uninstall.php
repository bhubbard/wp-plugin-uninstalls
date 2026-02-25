<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cachify');
delete_site_option('cachify');

// Delete Transients
delete_transient('cachify_cache_size');
delete_site_transient('cachify_cache_size');

// Clear Cron Jobs
wp_clear_scheduled_hook('hdd_cache_cron');

