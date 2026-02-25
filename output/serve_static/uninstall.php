<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('serve_static_master_key');
delete_site_option('serve_static_master_key');
delete_option('serve_static_log_all_done');
delete_site_option('serve_static_log_all_done');
delete_option('serve_statis_failed_requests_count');
delete_site_option('serve_statis_failed_requests_count');
delete_option(' serve_static_make_static ');
delete_site_option(' serve_static_make_static ');
delete_option(' serve_static_exclude_urls ');
delete_site_option(' serve_static_exclude_urls ');
delete_option(' serve_static_post_types_static ');
delete_site_option(' serve_static_post_types_static ');
delete_option('serve_static_specific_post_types');
delete_site_option('serve_static_specific_post_types');
delete_option('serve_static_urls');
delete_site_option('serve_static_urls');
delete_option('serve_static_make_static');
delete_site_option('serve_static_make_static');
delete_option('serve_static_manual_entry');
delete_site_option('serve_static_manual_entry');
delete_option('serve_static_html_minify_enabled');
delete_site_option('serve_static_html_minify_enabled');
delete_option('serve_static_css_minify_enabled');
delete_site_option('serve_static_css_minify_enabled');
delete_option('serve_static_js_minify_enabled');
delete_site_option('serve_static_js_minify_enabled');
delete_option('serve_static_cron_time');
delete_site_option('serve_static_cron_time');
delete_option('serve_static_post_types_static');
delete_site_option('serve_static_post_types_static');
delete_option('serve_static_fallback_method');
delete_site_option('serve_static_fallback_method');
delete_option('serve_static_exclude_urls');
delete_site_option('serve_static_exclude_urls');
delete_option('serve_static_requests_interval');
delete_site_option('serve_static_requests_interval');
delete_option('serve_static_db_version');
delete_site_option('serve_static_db_version');
delete_option('serve_static_warm_on_save');
delete_site_option('serve_static_warm_on_save');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('serve_static_htaccess_not_writable');
delete_site_transient('serve_static_htaccess_not_writable');
delete_transient('serve_static_cache_warming_in_progress');
delete_site_transient('serve_static_cache_warming_in_progress');
delete_transient('serve_static_initial');
delete_site_transient('serve_static_initial');
delete_transient('serve_static_cron_not_running');
delete_site_transient('serve_static_cron_not_running');
delete_transient('serve_static_db_is_updated_notice');
delete_site_transient('serve_static_db_is_updated_notice');
delete_transient('serve_static_nginx_notice_dismissed');
delete_site_transient('serve_static_nginx_notice_dismissed');
delete_transient('serve_static_apache_notice_dismissed');
delete_site_transient('serve_static_apache_notice_dismissed');
delete_transient('serve_static_cron_notice_dismissed');
delete_site_transient('serve_static_cron_notice_dismissed');
delete_transient('serve_static_wp_cron_notice_dismissed');
delete_site_transient('serve_static_wp_cron_notice_dismissed');
delete_transient('serve_static_cron_not_working_notice_dismissed');
delete_site_transient('serve_static_cron_not_working_notice_dismissed');
delete_transient('serve_static_cron_not_scheduled_notice_dismissed');
delete_site_transient('serve_static_cron_not_scheduled_notice_dismissed');
delete_transient('serve_static_plugin_modified_notice');
delete_site_transient('serve_static_plugin_modified_notice');
delete_transient('serve_static_db_update_notice');
delete_site_transient('serve_static_db_update_notice');
delete_transient('serve_static_logged_in_cookies');
delete_site_transient('serve_static_logged_in_cookies');
delete_transient('serve_static_logged_in_cookie');
delete_site_transient('serve_static_logged_in_cookie');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('serve_static_cache_cron_event');
wp_clear_scheduled_hook('custom_warmup_cache_cron');
wp_clear_scheduled_hook('warm_up_cache_request');
wp_clear_scheduled_hook('warm_up_cache_request_triggers');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

