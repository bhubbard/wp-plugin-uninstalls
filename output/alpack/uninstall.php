<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('presslearn_analytics_enabled');
delete_site_option('presslearn_analytics_enabled');
delete_option('presslearn_plugin_key');
delete_site_option('presslearn_plugin_key');
delete_option('presslearn_plugin_activated_time');
delete_site_option('presslearn_plugin_activated_time');
delete_option('presslearn_activation_logs');
delete_site_option('presslearn_activation_logs');
delete_option('presslearn_quick_button_enabled');
delete_site_option('presslearn_quick_button_enabled');
delete_option('presslearn_button_transition_enabled');
delete_site_option('presslearn_button_transition_enabled');
delete_option('presslearn_button_preset');
delete_site_option('presslearn_button_preset');
delete_option('presslearn_dynamic_banner_enabled');
delete_site_option('presslearn_dynamic_banner_enabled');
delete_option('presslearn_indexnow_api_key');
delete_site_option('presslearn_indexnow_api_key');
delete_option('presslearn_auto_index_enabled');
delete_site_option('presslearn_auto_index_enabled');
delete_option('presslearn_auto_indexing_enabled');
delete_site_option('presslearn_auto_indexing_enabled');
delete_option('presslearn_click_protection_enabled');
delete_site_option('presslearn_click_protection_enabled');
delete_option('presslearn_scroll_depth_enabled');
delete_site_option('presslearn_scroll_depth_enabled');
delete_option('presslearn_social_share_enabled');
delete_site_option('presslearn_social_share_enabled');
delete_option('presslearn_social_share_alignment');
delete_site_option('presslearn_social_share_alignment');
delete_option('presslearn_social_share_options');
delete_site_option('presslearn_social_share_options');
delete_option('presslearn_social_share_style');
delete_site_option('presslearn_social_share_style');
delete_option('presslearn_kakao_api_key');
delete_site_option('presslearn_kakao_api_key');
delete_option('presslearn_plugin_header_version');
delete_site_option('presslearn_plugin_header_version');
delete_option('presslearn_plugin_settings');
delete_site_option('presslearn_plugin_settings');
delete_option('presslearn_ad_clicker_enabled');
delete_site_option('presslearn_ad_clicker_enabled');
delete_option('presslearn_header_footer_enabled');
delete_site_option('presslearn_header_footer_enabled');
delete_option('presslearn_click_protection_blocked_countries');
delete_site_option('presslearn_click_protection_blocked_countries');
delete_option('presslearn_popup_content');
delete_site_option('presslearn_popup_content');
delete_option('presslearn_scroll_percentage');
delete_site_option('presslearn_scroll_percentage');
delete_option('presslearn_popup_animation');
delete_site_option('presslearn_popup_animation');
delete_option('presslearn_repeat_setting');
delete_site_option('presslearn_repeat_setting');
delete_option('presslearn_adclicker_overlay_range');
delete_site_option('presslearn_adclicker_overlay_range');
delete_option('presslearn_adclicker_overlay_color');
delete_site_option('presslearn_adclicker_overlay_color');
delete_option('presslearn_adclicker_button_color');
delete_site_option('presslearn_adclicker_button_color');
delete_option('presslearn_adclicker_button_text_color');
delete_site_option('presslearn_adclicker_button_text_color');
delete_option('presslearn_adclicker_display_time');
delete_site_option('presslearn_adclicker_display_time');
delete_option('presslearn_click_protection_block_expiry_days');
delete_site_option('presslearn_click_protection_block_expiry_days');
delete_option('presslearn_analytics_exclude_admin');
delete_site_option('presslearn_analytics_exclude_admin');
delete_option('presslearn_analytics_use_cloudflare');
delete_site_option('presslearn_analytics_use_cloudflare');
delete_option('presslearn_click_protection_use_cloudflare');
delete_site_option('presslearn_click_protection_use_cloudflare');
delete_option('presslearn_click_protection_allowed_ips');
delete_site_option('presslearn_click_protection_allowed_ips');
delete_option('presslearn_click_protection_blocked_ips');
delete_site_option('presslearn_click_protection_blocked_ips');
delete_option('presslearn_click_protection_blocked_ips_backup_delete');
delete_site_option('presslearn_click_protection_blocked_ips_backup_delete');
delete_option('presslearn_reset_localStorage_signals');
delete_site_option('presslearn_reset_localStorage_signals');
delete_option('presslearn_click_protection_blocked_ips_backup');
delete_site_option('presslearn_click_protection_blocked_ips_backup');
delete_option('presslearn_max_click_count');
delete_site_option('presslearn_max_click_count');
delete_option('presslearn_click_time_window');
delete_site_option('presslearn_click_time_window');
delete_option('presslearn_modal_title');
delete_site_option('presslearn_modal_title');
delete_option('presslearn_modal_message');
delete_site_option('presslearn_modal_message');
delete_option('presslearn_modal_submessage');
delete_site_option('presslearn_modal_submessage');
delete_option('presslearn_modal_button_text');
delete_site_option('presslearn_modal_button_text');
delete_option('presslearn_adclicker_global_enabled');
delete_site_option('presslearn_adclicker_global_enabled');
delete_option('presslearn_adclicker_frequency');
delete_site_option('presslearn_adclicker_frequency');
delete_option('presslearn_analytics_cache_time');
delete_site_option('presslearn_analytics_cache_time');
delete_option('presslearn_header_code');
delete_site_option('presslearn_header_code');
delete_option('presslearn_body_open_code');
delete_site_option('presslearn_body_open_code');
delete_option('presslearn_before_closing_body_code');
delete_site_option('presslearn_before_closing_body_code');
delete_option('presslearn_footer_code');
delete_site_option('presslearn_footer_code');
delete_option('presslearn_index_post_types');
delete_site_option('presslearn_index_post_types');
delete_option('presslearn_ai_contents_enabled');
delete_site_option('presslearn_ai_contents_enabled');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_presslearn_activation_attempts_%', '_site_transient_presslearn_activation_attempts_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('presslearn_plugin_activation_redirect');
delete_site_transient('presslearn_plugin_activation_redirect');
delete_transient('presslearn_plugin_updated_notice');
delete_site_transient('presslearn_plugin_updated_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('presslearn_index_post_delayed');
wp_clear_scheduled_hook('presslearn_check_blocked_ips_expiry');
wp_clear_scheduled_hook('presslearn_daily_post_views_update');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'presslearn_user_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'presslearn_user_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'presslearn_user_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'presslearn_user_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_presslearn_post_views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_presslearn_post_views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_presslearn_post_views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_presslearn_post_views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_presslearn_adclicker_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_presslearn_adclicker_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_presslearn_adclicker_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_presslearn_adclicker_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_presslearn_adclicker_button_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_presslearn_adclicker_button_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_presslearn_adclicker_button_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_presslearn_adclicker_button_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_presslearn_adclicker_ad_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_presslearn_adclicker_ad_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_presslearn_adclicker_ad_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_presslearn_adclicker_ad_link' ) );

