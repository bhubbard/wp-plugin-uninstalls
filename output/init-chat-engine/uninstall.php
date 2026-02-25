<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('init_plugin_suite_chat_engine_db_version');
delete_site_option('init_plugin_suite_chat_engine_db_version');
delete_option('init_chat_last_daily_stat_update');
delete_site_option('init_chat_last_daily_stat_update');
delete_option('init_chat_basic_settings');
delete_site_option('init_chat_basic_settings');
delete_option('init_chat_security_settings');
delete_site_option('init_chat_security_settings');
delete_option('init_chat_advanced_settings');
delete_site_option('init_chat_advanced_settings');
delete_option('init_plugin_suite_chat_engine_settings');
delete_site_option('init_plugin_suite_chat_engine_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('init_chat_engine_cleanup_messages');

