<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lyte_emptycache');
delete_site_option('lyte_emptycache');
delete_option('lyte_show_links');
delete_site_option('lyte_show_links');
delete_option('lyte_size');
delete_site_option('lyte_size');
delete_option('lyte_hidef');
delete_site_option('lyte_hidef');
delete_option('lyte_position');
delete_site_option('lyte_position');
delete_option('lyte_microdata');
delete_site_option('lyte_microdata');
delete_option('lyte_greedy');
delete_site_option('lyte_greedy');
delete_option('lyte_yt_api_key');
delete_site_option('lyte_yt_api_key');
delete_option('lyte_local_thumb');
delete_site_option('lyte_local_thumb');
delete_option('lyte_disclaimer');
delete_site_option('lyte_disclaimer');
delete_option('lyte_api_error');
delete_site_option('lyte_api_error');
delete_option('lyte_version');
delete_site_option('lyte_version');
delete_option('lyte_cache_index');
delete_site_option('lyte_cache_index');
delete_option('lyte_widget_cache');
delete_site_option('lyte_widget_cache');

// Delete Transients
delete_transient('wp-youtube-lyte_banner');
delete_site_transient('wp-youtube-lyte_banner');

