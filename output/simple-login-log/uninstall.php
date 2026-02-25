<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sll_db_ver');
delete_site_option('sll_db_ver');
delete_option('users_page_login_log_per_page');
delete_site_option('users_page_login_log_per_page');
delete_option('simple_login_log');
delete_site_option('simple_login_log');

// Clear Cron Jobs
wp_clear_scheduled_hook('truncate_sll');
wp_clear_scheduled_hook('truncate_log');
wp_clear_scheduled_hook('SimpleLoginLog::truncate_log');

