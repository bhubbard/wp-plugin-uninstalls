<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ifpwap_app_title');
delete_site_option('ifpwap_app_title');
delete_option('ifpwap_select_start_page');
delete_site_option('ifpwap_select_start_page');
delete_option('ifpwap_caching_type');
delete_site_option('ifpwap_caching_type');
delete_option('ifpwap_orientation');
delete_site_option('ifpwap_orientation');
delete_option('ifpwap_display');
delete_site_option('ifpwap_display');
delete_option('ifpwap_text_direction');
delete_site_option('ifpwap_text_direction');
delete_option('ifpwap_custom_footer_btn');
delete_site_option('ifpwap_custom_footer_btn');
delete_option('ifpwap_campaign_source');
delete_site_option('ifpwap_campaign_source');
delete_option('ifpwap_campaign_medium');
delete_site_option('ifpwap_campaign_medium');
delete_option('ifpwap_campaign_name');
delete_site_option('ifpwap_campaign_name');
delete_option('ifpwap_theme_color');
delete_site_option('ifpwap_theme_color');
delete_option('ifpwap_app_short_title');
delete_site_option('ifpwap_app_short_title');
delete_option('ifpwap_description');
delete_site_option('ifpwap_description');
delete_option('ifpwap_app_icon');
delete_site_option('ifpwap_app_icon');
delete_option('ifpwap_monocrome_icon');
delete_site_option('ifpwap_monocrome_icon');
delete_option('ifpwap_space_screen_icon');
delete_site_option('ifpwap_space_screen_icon');
delete_option('ifpwap_background_color');
delete_site_option('ifpwap_background_color');
delete_option('ifpwap_select_offline_page');
delete_site_option('ifpwap_select_offline_page');
delete_option('ifpwap_pre_caching_manual');
delete_site_option('ifpwap_pre_caching_manual');
delete_option('ifpwap_offline_analytics');
delete_site_option('ifpwap_offline_analytics');
delete_option('ifpwap_cache_external_urls');
delete_site_option('ifpwap_cache_external_urls');
delete_option('ifpwap_exclude_urls_from_cache_list');
delete_site_option('ifpwap_exclude_urls_from_cache_list');

