<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sqlog_install');
delete_site_option('sqlog_install');
delete_option('sqlog_install_date');
delete_site_option('sqlog_install_date');
delete_option('sqlog_uninstall_date');
delete_site_option('sqlog_uninstall_date');
delete_option('sqlog_enabled');
delete_site_option('sqlog_enabled');
delete_option('sqlog_purge_interval');
delete_site_option('sqlog_purge_interval');
delete_option('sqlog_plugin_version');
delete_site_option('sqlog_plugin_version');
delete_option('sqlog_settings_update');
delete_site_option('sqlog_settings_update');

// Clear Cron Jobs
wp_clear_scheduled_hook('sqlog_cron_process_purge_logs');

