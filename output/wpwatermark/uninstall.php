<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpwatermark_options');
delete_site_option('wpwatermark_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpwatermark_clean_logs');

