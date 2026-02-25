<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mld_settings');
delete_site_option('mld_settings');
delete_option('mld_download_logs');
delete_site_option('mld_download_logs');

// Clear Cron Jobs
wp_clear_scheduled_hook('mld_cleanup_temp_files');

