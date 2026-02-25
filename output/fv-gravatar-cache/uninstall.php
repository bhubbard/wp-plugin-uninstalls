<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fv_gravatar_cache');
delete_site_option('fv_gravatar_cache');
delete_option('fv_gravatar_cache_nag');
delete_site_option('fv_gravatar_cache_nag');
delete_option('fv_gravatar_cache_directory_changed');
delete_site_option('fv_gravatar_cache_directory_changed');
delete_option('fv_gravatar_cache_offset');
delete_site_option('fv_gravatar_cache_offset');

// Clear Cron Jobs
wp_clear_scheduled_hook('fv_gravatar_cache_cron');

