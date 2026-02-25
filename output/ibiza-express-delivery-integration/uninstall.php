<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ibizaxdel_api_integration_key');
delete_site_option('ibizaxdel_api_integration_key');
delete_option('ibizaxdel_api_integration_env');
delete_site_option('ibizaxdel_api_integration_env');

// Clear Cron Jobs
wp_clear_scheduled_hook('ibizaxdel_cron_hook_name');

