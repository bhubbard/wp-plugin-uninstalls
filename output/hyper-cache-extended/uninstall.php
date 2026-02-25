<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hyper_cache_extended');
delete_site_option('hyper_cache_extended');
delete_option('gltr_preferred_languages');
delete_site_option('gltr_preferred_languages');

// Clear Cron Jobs
wp_clear_scheduled_hook('hyper_clean');

