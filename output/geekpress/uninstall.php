<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('geekp_PluginPress_User');
delete_site_option('geekp_PluginPress_User');
delete_option('geekp_PluginPress_Api_Key');
delete_site_option('geekp_PluginPress_Api_Key');
delete_option('geekp_PluginPress_Secret');
delete_site_option('geekp_PluginPress_Secret');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'geekp_PluginPress_Def_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('geekp_api_key');
delete_site_option('geekp_api_key');
delete_option('geekp_post_types');
delete_site_option('geekp_post_types');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('geekp_custom_pages');
delete_site_option('geekp_custom_pages');
delete_option('geekp_custom_page_links');
delete_site_option('geekp_custom_page_links');
delete_option('geekp_external_logos');
delete_site_option('geekp_external_logos');
delete_option('geekp_selected_credits');
delete_site_option('geekp_selected_credits');
delete_option('geekp_lang');
delete_site_option('geekp_lang');
delete_option('geekLang');
delete_site_option('geekLang');
delete_option('geekp_rating_instead_imdb');
delete_site_option('geekp_rating_instead_imdb');
delete_option('geekp_rating_instead_igdb');
delete_site_option('geekp_rating_instead_igdb');
delete_option('geekp_publish_perm');
delete_site_option('geekp_publish_perm');
delete_option('geekp_Plugin_Version');
delete_site_option('geekp_Plugin_Version');
delete_option('geekp_PluginPress_Count');
delete_site_option('geekp_PluginPress_Count');
delete_option('geekp_permalink_endpoints');
delete_site_option('geekp_permalink_endpoints');
delete_option('geekp_permalink_roots');
delete_site_option('geekp_permalink_roots');
delete_option('geekp_version');
delete_site_option('geekp_version');
delete_option('geekp_field_category');
delete_site_option('geekp_field_category');
delete_option('geekp_imageViewer');
delete_site_option('geekp_imageViewer');
delete_option('geekp_videoViewer');
delete_site_option('geekp_videoViewer');
delete_option('geekp_userIntegration');
delete_site_option('geekp_userIntegration');
delete_option('geekp_game_theme');
delete_site_option('geekp_game_theme');
delete_option('geekp_theme');
delete_site_option('geekp_theme');
delete_option('geekp_register_page');
delete_site_option('geekp_register_page');
delete_option('geekp_user_settings');
delete_site_option('geekp_user_settings');
delete_option('geekp_user_permalink');
delete_site_option('geekp_user_permalink');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attached_file' ) );

