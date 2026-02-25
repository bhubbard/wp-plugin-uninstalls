<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Clear Cron Jobs
wp_clear_scheduled_hook('cfpc_action_preload_cache_set_urls_single_event');
wp_clear_scheduled_hook('cfpc_action_preload_cache_event');

