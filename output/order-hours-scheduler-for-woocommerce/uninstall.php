<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Clear Cron Jobs
wp_clear_scheduled_hook('zhours_cache_clear_open');
wp_clear_scheduled_hook('zhours_cache_clear_close');

