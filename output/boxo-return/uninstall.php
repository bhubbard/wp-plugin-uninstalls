<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('boxo_options');
delete_site_option('boxo_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('boxo_flush_postal_code_cache');

