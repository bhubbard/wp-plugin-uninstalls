<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aicp_settings_options');
delete_site_option('aicp_settings_options');
delete_option('aicp_donate_notice');
delete_site_option('aicp_donate_notice');
delete_option('aicp_db_ver');
delete_site_option('aicp_db_ver');

// Clear Cron Jobs
wp_clear_scheduled_hook('aicp_hourly_cleanup');

