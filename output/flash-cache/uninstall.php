<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('flash_cache_advanced_settings');
delete_site_option('flash_cache_advanced_settings');
delete_option('flash_cache_settings');
delete_site_option('flash_cache_settings');
delete_option('flash_cache_disk_usage');
delete_site_option('flash_cache_disk_usage');
delete_option('flash_cache_preload_current_post');
delete_site_option('flash_cache_preload_current_post');
delete_option('flash_cache_preload_now');
delete_site_option('flash_cache_preload_now');
delete_option('flash_cache_preload_cron');
delete_site_option('flash_cache_preload_cron');
delete_option('flash_cache_preload');
delete_site_option('flash_cache_preload');
delete_option('flash_cache_version');
delete_site_option('flash_cache_version');
delete_option('flash_cache_updated_3_2');
delete_site_option('flash_cache_updated_3_2');
delete_option('flash_cache_updated_3_3');
delete_site_option('flash_cache_updated_3_3');

// Clear Cron Jobs
wp_clear_scheduled_hook('flash_cache_cron');

