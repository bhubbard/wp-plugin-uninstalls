<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('speedsize_enabled');
delete_site_option('speedsize_enabled');
delete_option('speedsize_client_id');
delete_site_option('speedsize_client_id');
delete_option('speedsize_client_id_active');
delete_site_option('speedsize_client_id_active');
delete_option('speedsize_service_base_url');
delete_site_option('speedsize_service_base_url');
delete_option('speedsize_client_allow_upscale');
delete_site_option('speedsize_client_allow_upscale');
delete_option('speedsize_client_cdn_syntax');
delete_site_option('speedsize_client_cdn_syntax');
delete_option('speedsize_client_forbidden_paths');
delete_site_option('speedsize_client_forbidden_paths');
delete_option('speedsize_client_whitelist_domains');
delete_site_option('speedsize_client_whitelist_domains');
delete_option('speedsize_js_snippet_enabled');
delete_site_option('speedsize_js_snippet_enabled');
delete_option('speedsize_mute_all_videos');
delete_site_option('speedsize_mute_all_videos');
delete_option('speedsize_realtime_parsing_enabled');
delete_site_option('speedsize_realtime_parsing_enabled');
delete_option('speedsize_css_files_parsing_enabled');
delete_site_option('speedsize_css_files_parsing_enabled');
delete_option('speedsize_css_files_parsing_excluded_keywords');
delete_site_option('speedsize_css_files_parsing_excluded_keywords');
delete_option('speedsize_keep_https_scheme_on_wrapped_media_urls');
delete_site_option('speedsize_keep_https_scheme_on_wrapped_media_urls');
delete_option('speedsize_omit_client_id_from_wrapped_media_urls');
delete_site_option('speedsize_omit_client_id_from_wrapped_media_urls');
delete_option('speedsize_disable_processor_filters');
delete_site_option('speedsize_disable_processor_filters');

// Clear Cron Jobs
wp_clear_scheduled_hook('speedsize_cron_clear_expired_css_cache');
wp_clear_scheduled_hook('speedsize_cron_refresh_client_settings');

