<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('preeco_widgets_timestamp');
delete_site_option('preeco_widgets_timestamp');
delete_option('preeco_widgets_caching_enabled');
delete_site_option('preeco_widgets_caching_enabled');

// Clear Cron Jobs
wp_clear_scheduled_hook('preeco_widgets_cache_all');

