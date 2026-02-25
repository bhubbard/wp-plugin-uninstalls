<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rt_wp_lws_cache_options');
delete_site_option('rt_wp_lws_cache_options');
delete_option('rt_wp_lws_cache_init_check');
delete_site_option('rt_wp_lws_cache_init_check');
delete_option('lws_cache_poweredcache_addons');
delete_site_option('lws_cache_poweredcache_addons');
delete_option('lws_cache_wprocket_addons');
delete_site_option('lws_cache_wprocket_addons');
delete_option('lwscache_do_not_ask_again');
delete_site_option('lwscache_do_not_ask_again');
delete_option('lwscache_excluded_urls');
delete_site_option('lwscache_excluded_urls');

// Delete Transients
delete_transient('lwscache_remind_me');
delete_site_transient('lwscache_remind_me');

// Clear Cron Jobs
wp_clear_scheduled_hook('rt_wp_lws_cache_check_log_file_size_daily');

