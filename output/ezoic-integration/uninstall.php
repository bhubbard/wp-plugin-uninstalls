<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ezoic_js_integration_enabled');
delete_site_option('ezoic_js_integration_enabled');
delete_option('ezoic_js_integration_options');
delete_site_option('ezoic_js_integration_options');
delete_option('ezoic_adstxtmanager_id');
delete_site_option('ezoic_adstxtmanager_id');
delete_option('ezoic_adstxtmanager_auto_detect');
delete_site_option('ezoic_adstxtmanager_auto_detect');
delete_option('ezoic_adstxtmanager_status');
delete_site_option('ezoic_adstxtmanager_status');
delete_option('ezoic_cdn_api_key');
delete_site_option('ezoic_cdn_api_key');
delete_option('ezoic_cdn_enabled');
delete_site_option('ezoic_cdn_enabled');
delete_option('ezoic_cdn_show_post_ids');
delete_site_option('ezoic_cdn_show_post_ids');
delete_option('ezoic_cdn_always_clear_posts');
delete_site_option('ezoic_cdn_always_clear_posts');
delete_option('ezoic_cdn_always_clear_urls');
delete_site_option('ezoic_cdn_always_clear_urls');
delete_option('ezoic_cdn_always_home');
delete_site_option('ezoic_cdn_always_home');
delete_option('ezoic_cdn_domain');
delete_site_option('ezoic_cdn_domain');
delete_option('ezoic_cdn_verbose_mode');
delete_site_option('ezoic_cdn_verbose_mode');
delete_option('fb_clear_cache_enabled');
delete_site_option('fb_clear_cache_enabled');
delete_option('fb_app_id');
delete_site_option('fb_app_id');
delete_option('fb_app_secret');
delete_site_option('fb_app_secret');
delete_option('fb_app_auth_token');
delete_site_option('fb_app_auth_token');
delete_option('ez_emote_enabled');
delete_site_option('ez_emote_enabled');
delete_option('ezoic_integration_status');
delete_site_option('ezoic_integration_status');
delete_option('ezoic_integration_options');
delete_site_option('ezoic_integration_options');
delete_option('ezoic_speed_settings');
delete_site_option('ezoic_speed_settings');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
delete_option('widget_ezoic_adpos_widget');
delete_site_option('widget_ezoic_adpos_widget');
delete_option('ezoic_cdn_show_post_ids ');
delete_site_option('ezoic_cdn_show_post_ids ');
delete_option('GTranslate');
delete_site_option('GTranslate');
delete_option('ezoic_auth_client_id');
delete_site_option('ezoic_auth_client_id');
delete_option('ezoic_auth_client_secret');
delete_site_option('ezoic_auth_client_secret');
delete_option('ezoic_auth_access_token');
delete_site_option('ezoic_auth_access_token');
delete_option('ezoic_token_generated_time');
delete_site_option('ezoic_token_generated_time');
delete_option('ezoic_db_version');
delete_site_option('ezoic_db_version');

// Delete Transients
delete_transient('ezoic_send_debug');
delete_site_transient('ezoic_send_debug');
delete_transient('ezoic_clear_caches');
delete_site_transient('ezoic_clear_caches');
delete_transient('ezoic_config_regenerate');
delete_site_transient('ezoic_config_regenerate');
delete_transient('ezoic_duplicate_scripts_check');
delete_site_transient('ezoic_duplicate_scripts_check');
delete_transient('ezoic_cdn_admin_notice');
delete_site_transient('ezoic_cdn_admin_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('fetch_placeholders');

