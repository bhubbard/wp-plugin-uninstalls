<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bubblibot_debug_enabled');
delete_site_option('bubblibot_debug_enabled');
delete_option('bubblibot_db_version');
delete_site_option('bubblibot_db_version');
delete_option('bubblibot_activation_error');
delete_site_option('bubblibot_activation_error');
delete_option('bubblibot_font_size');
delete_site_option('bubblibot_font_size');
delete_option('bubblibot_display_pages');
delete_site_option('bubblibot_display_pages');
delete_option('bubblibot_exclude_pages');
delete_site_option('bubblibot_exclude_pages');
delete_option('bubblibot_openai_api_key');
delete_site_option('bubblibot_openai_api_key');
delete_option('bubblibot_response_mode');
delete_site_option('bubblibot_response_mode');
delete_option('bubblibot_enabled');
delete_site_option('bubblibot_enabled');
delete_option('bubblibot_welcome_message');
delete_site_option('bubblibot_welcome_message');
delete_option('bubblibot_placeholder_text');
delete_site_option('bubblibot_placeholder_text');
delete_option('bubblibot_header_text');
delete_site_option('bubblibot_header_text');
delete_option('bubblibot_primary_color');
delete_site_option('bubblibot_primary_color');
delete_option('bubblibot_secondary_color');
delete_site_option('bubblibot_secondary_color');
delete_option('bubblibot_text_color');
delete_site_option('bubblibot_text_color');
delete_option('bubblibot_chat_window_bg');
delete_site_option('bubblibot_chat_window_bg');
delete_option('bubblibot_bot_message_bg');
delete_site_option('bubblibot_bot_message_bg');
delete_option('bubblibot_bot_message_text');
delete_site_option('bubblibot_bot_message_text');
delete_option('bubblibot_openai_model');
delete_site_option('bubblibot_openai_model');
delete_option('bubblibot_position');
delete_site_option('bubblibot_position');
delete_option('bubblibot_mobile_enabled');
delete_site_option('bubblibot_mobile_enabled');
delete_option('bubblibot_language_detection_enabled');
delete_site_option('bubblibot_language_detection_enabled');
delete_option('bubblibot_default_language');
delete_site_option('bubblibot_default_language');
delete_option('bubblibot_analytics_enabled');
delete_site_option('bubblibot_analytics_enabled');
delete_option('bubblibot_indexing_progress');
delete_site_option('bubblibot_indexing_progress');
delete_option('bubblibot_api_key_verified_hash');
delete_site_option('bubblibot_api_key_verified_hash');
delete_option('bubblibot_analytics_retention');
delete_site_option('bubblibot_analytics_retention');
delete_option('bubblibot_last_full_index');
delete_site_option('bubblibot_last_full_index');
delete_option('bubblibot_bot_avatar_url');
delete_site_option('bubblibot_bot_avatar_url');
delete_option('bubblibot_woocommerce_enabled');
delete_site_option('bubblibot_woocommerce_enabled');

// Clear Cron Jobs
wp_clear_scheduled_hook('bubblibot_initial_index');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bubblibot_indexed_after_insert' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bubblibot_indexed_after_insert' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bubblibot_indexed_after_insert' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bubblibot_indexed_after_insert' ) );

