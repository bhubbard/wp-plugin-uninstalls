<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('varycache_version');
delete_site_option('varycache_version');
delete_option('varycache_write_error');
delete_site_option('varycache_write_error');

// Delete Transients
delete_transient('varycache_preload_lock');
delete_site_transient('varycache_preload_lock');
delete_transient('varycache_cache_report');
delete_site_transient('varycache_cache_report');

// Clear Cron Jobs
wp_clear_scheduled_hook('VaryCache_Preload_cron');

