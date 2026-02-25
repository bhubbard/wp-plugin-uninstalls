<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aisprtsw_api_settings');
delete_site_option('aisprtsw_api_settings');
delete_option('aisprtsw_post_settings');
delete_site_option('aisprtsw_post_settings');
delete_option('aisprtsw_db_version');
delete_site_option('aisprtsw_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('aisprtsw_fetch_cron');
wp_clear_scheduled_hook('aisprtsw_cron');

