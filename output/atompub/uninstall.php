<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('atompub_options');
delete_site_option('atompub_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('atompub_pubsubhubbub_cron');
wp_clear_scheduled_hook('atompub_pubsubhubbub_callback');

