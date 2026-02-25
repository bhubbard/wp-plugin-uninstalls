<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jtzl_sw_deactivated_at');
delete_site_option('jtzl_sw_deactivated_at');
delete_option('jtzl_sw_options');
delete_site_option('jtzl_sw_options');
delete_option('jtzl_sw_cdn_settings');
delete_site_option('jtzl_sw_cdn_settings');
delete_option('jtzl_sw_log_settings');
delete_site_option('jtzl_sw_log_settings');
delete_option('jtzl_sw_plugin_version');
delete_site_option('jtzl_sw_plugin_version');
delete_option('jtzl_sw_db_version');
delete_site_option('jtzl_sw_db_version');
delete_option('jtzl_sw_cache_version');
delete_site_option('jtzl_sw_cache_version');
delete_option('jtzl_sw_version');
delete_site_option('jtzl_sw_version');

// Delete Transients
delete_transient('jtzl_sw_build_missing_notice');
delete_site_transient('jtzl_sw_build_missing_notice');
delete_transient('jtzl_sw_deactivated');
delete_site_transient('jtzl_sw_deactivated');
delete_transient('jtzl_sw_flush_rewrite_rules');
delete_site_transient('jtzl_sw_flush_rewrite_rules');
delete_transient('jtzl_sw_reregister_sw');
delete_site_transient('jtzl_sw_reregister_sw');

// Clear Cron Jobs
wp_clear_scheduled_hook('jtzl_sw_cleanup_error_logs');

