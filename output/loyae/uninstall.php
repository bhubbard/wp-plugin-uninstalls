<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('loyae_site_id');
delete_site_option('loyae_site_id');
delete_option('loyae_api_token');
delete_site_option('loyae_api_token');
delete_option('loyae_site_token');
delete_site_option('loyae_site_token');

// Clear Cron Jobs
wp_clear_scheduled_hook('loyae_cleanup_analyses');

