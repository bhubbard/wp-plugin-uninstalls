<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lime_adsense_tag_comments');
delete_site_option('lime_adsense_tag_comments');
delete_option('lime_adsense_tag_posts');
delete_site_option('lime_adsense_tag_posts');
delete_option('lime_rss_tagging');
delete_site_option('lime_rss_tagging');
delete_option('lime_rss_tag_source');
delete_site_option('lime_rss_tag_source');
delete_option('lime_rss_tag_medium');
delete_site_option('lime_rss_tag_medium');
delete_option('lime_rss_tag_campaign');
delete_site_option('lime_rss_tag_campaign');
delete_option('lime_wt_mode');
delete_site_option('lime_wt_mode');
delete_option('lime_wt_file');
delete_site_option('lime_wt_file');
delete_option('lime_analytics_id');
delete_site_option('lime_analytics_id');
delete_option('lime_analytics_track_404');
delete_site_option('lime_analytics_track_404');
delete_option('lime_analytics_track_404_prefix');
delete_site_option('lime_analytics_track_404_prefix');
delete_option('lime_wt_meta');
delete_site_option('lime_wt_meta');
delete_option('lime_analytics_adsense');
delete_site_option('lime_analytics_adsense');
delete_option('lime_chromeframe_enabled');
delete_site_option('lime_chromeframe_enabled');
delete_option('lime_jquery_enabled');
delete_site_option('lime_jquery_enabled');
delete_option('lime_jquery_version');
delete_site_option('lime_jquery_version');
delete_option('lime_jqueryui_enabled');
delete_site_option('lime_jqueryui_enabled');
delete_option('lime_jqueryui_version');
delete_site_option('lime_jqueryui_version');
delete_option('lime_wp_hide_menu_update');
delete_site_option('lime_wp_hide_menu_update');
delete_option('lime_wp_hide_menu_posts');
delete_site_option('lime_wp_hide_menu_posts');
delete_option('lime_wp_hide_menu_media');
delete_site_option('lime_wp_hide_menu_media');
delete_option('lime_wp_hide_menu_links');
delete_site_option('lime_wp_hide_menu_links');
delete_option('lime_wp_hide_menu_pages');
delete_site_option('lime_wp_hide_menu_pages');
delete_option('lime_wp_hide_menu_comments');
delete_site_option('lime_wp_hide_menu_comments');
delete_option('lime_wp_hide_menu_appearance');
delete_site_option('lime_wp_hide_menu_appearance');
delete_option('lime_wp_hide_menu_plugins');
delete_site_option('lime_wp_hide_menu_plugins');
delete_option('lime_wp_hide_menu_users');
delete_site_option('lime_wp_hide_menu_users');
delete_option('lime_wp_hide_menu_tools');
delete_site_option('lime_wp_hide_menu_tools');
delete_option('lime_wp_hide_menu_settings');
delete_site_option('lime_wp_hide_menu_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'lime_active_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('lime_show_inactive_modules');
delete_site_option('lime_show_inactive_modules');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('lime_show_news');
delete_site_option('lime_show_news');

