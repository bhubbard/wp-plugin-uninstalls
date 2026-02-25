<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('avalex_api_key');
delete_site_option('avalex_api_key');
delete_option('avalex_valid_api_key');
delete_site_option('avalex_valid_api_key');

// Clear Cron Jobs
wp_clear_scheduled_hook('avalex_cron_event');
wp_clear_scheduled_hook('avalex_update_dse_cron_event');

