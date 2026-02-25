<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gen_cache_options');
delete_site_option('gen_cache_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('gen_cache_hook');

