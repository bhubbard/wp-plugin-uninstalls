<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nginxm_global_options');
delete_site_option('nginxm_global_options');
delete_option('nginxm_options');
delete_site_option('nginxm_options');
delete_option('nginxm_init_check');
delete_site_option('nginxm_init_check');

// Clear Cron Jobs
wp_clear_scheduled_hook('nm_check_log_file_size_daily');

