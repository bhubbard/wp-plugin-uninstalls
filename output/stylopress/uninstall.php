<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spss_installer_admin_id');
delete_site_option('spss_installer_admin_id');
delete_option('spss_hide_plugin_for_other_admins');
delete_site_option('spss_hide_plugin_for_other_admins');
delete_option('spss_developer_name');
delete_site_option('spss_developer_name');
delete_option('spss_developer_email_address');
delete_site_option('spss_developer_email_address');
delete_option('spss_developer_phone_number');
delete_site_option('spss_developer_phone_number');
delete_option('spss_developer_site_address');
delete_site_option('spss_developer_site_address');
delete_option('spss_admin_notice_message');
delete_site_option('spss_admin_notice_message');
delete_option('spss_admin_to_users_notice_message');
delete_site_option('spss_admin_to_users_notice_message');
delete_option('spss_hidden_dashboard_items');
delete_site_option('spss_hidden_dashboard_items');
delete_option('spss_admin_menu_font_weight');
delete_site_option('spss_admin_menu_font_weight');
delete_option('spss_profile_image');
delete_site_option('spss_profile_image');
delete_option('spss_logo_image');
delete_site_option('spss_logo_image');
delete_option('spss_toggle_wp_menu_top_bar');
delete_site_option('spss_toggle_wp_menu_top_bar');
delete_option('spss_footer_content');
delete_site_option('spss_footer_content');
delete_option('spss_footer_version_toggle');
delete_site_option('spss_footer_version_toggle');
delete_option('spss_footer_toggle');
delete_site_option('spss_footer_toggle');
delete_option('spss_previous_font_family');
delete_site_option('spss_previous_font_family');
delete_option('spss_reset_lp_customizer');
delete_site_option('spss_reset_lp_customizer');
delete_option('spss_remove_settings_uninstall');
delete_site_option('spss_remove_settings_uninstall');
delete_option('spss_scheme_creator_options');
delete_site_option('spss_scheme_creator_options');
delete_option('spss_custom_color_scheme_options');
delete_site_option('spss_custom_color_scheme_options');
delete_option('spss_custom_color_scheme_dashboard_option');
delete_site_option('spss_custom_color_scheme_dashboard_option');
delete_option('spss_color_scheme_options');
delete_site_option('spss_color_scheme_options');
delete_option('spss_selected_color_scheme');
delete_site_option('spss_selected_color_scheme');
delete_option('spss_selected_scheme_icons_color');
delete_site_option('spss_selected_scheme_icons_color');
delete_option('spss_site_database_size');
delete_site_option('spss_site_database_size');
delete_option('spss_todo_list_tasks');
delete_site_option('spss_todo_list_tasks');
delete_option('spss_display_screen_options');
delete_site_option('spss_display_screen_options');
delete_option('spss_custom_html_or_text_content');
delete_site_option('spss_custom_html_or_text_content');
delete_option('spss_google_font_family');
delete_site_option('spss_google_font_family');
delete_option('spss_google_font_weight');
delete_site_option('spss_google_font_weight');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('update_core');
delete_site_transient('update_core');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'spss_profile_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'spss_profile_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'spss_profile_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'spss_profile_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'avatar' ) );

