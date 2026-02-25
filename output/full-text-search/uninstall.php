<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('full_text_search_options');
delete_site_option('full_text_search_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('full_text_search_event');

