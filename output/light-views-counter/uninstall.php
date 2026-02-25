<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lightvc_supported_post_types');
delete_site_option('lightvc_supported_post_types');
delete_option('lightvc_pvc_import_state');
delete_site_option('lightvc_pvc_import_state');
delete_option('lightvc_scroll_threshold');
delete_site_option('lightvc_scroll_threshold');
delete_option('lightvc_time_window');
delete_site_option('lightvc_time_window');
delete_option('lightvc_cache_duration');
delete_site_option('lightvc_cache_duration');
delete_option('lightvc_enable_caching');
delete_site_option('lightvc_enable_caching');
delete_option('lightvc_fast_mode');
delete_site_option('lightvc_fast_mode');
delete_option('lightvc_show_views_on_content');
delete_site_option('lightvc_show_views_on_content');
delete_option('lightvc_load_css_in_header');
delete_site_option('lightvc_load_css_in_header');
delete_option('lightvc_enable_get_endpoint');
delete_site_option('lightvc_enable_get_endpoint');
delete_option('lightvc_query_method');
delete_site_option('lightvc_query_method');
delete_option('lightvc_exclude_bots');
delete_site_option('lightvc_exclude_bots');
delete_option('lightvc_db_version');
delete_site_option('lightvc_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('lightvc_cache_warmup');

