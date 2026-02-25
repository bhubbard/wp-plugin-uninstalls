<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rt_wp_nginx_helper_options');
delete_site_option('rt_wp_nginx_helper_options');
delete_option('rt_wp_nginx_helper_init_check');
delete_site_option('rt_wp_nginx_helper_init_check');
delete_option('nginx_helper_version');
delete_site_option('nginx_helper_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('rt_wp_nginx_helper_check_log_file_size_daily');

