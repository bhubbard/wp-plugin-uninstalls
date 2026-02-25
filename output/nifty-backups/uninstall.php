<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nifty_backups_api_secret_token');
delete_site_option('nifty_backups_api_secret_token');
delete_option('nifty_backup_options');
delete_site_option('nifty_backup_options');
delete_option('nifty_bu_version');
delete_site_option('nifty_bu_version');
delete_option('nifty-bu-first-time');
delete_site_option('nifty-bu-first-time');
delete_option('nifty_backup_files');
delete_site_option('nifty_backup_files');

// Clear Cron Jobs
wp_clear_scheduled_hook('nifty_cron_hook');
wp_clear_scheduled_hook('nifty_backups_cron');

