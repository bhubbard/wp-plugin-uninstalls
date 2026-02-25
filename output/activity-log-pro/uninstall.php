<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('actlogpro_premium_settings_reset_notice');
delete_site_option('actlogpro_premium_settings_reset_notice');
delete_option('actlogpro_show_activation_notice');
delete_site_option('actlogpro_show_activation_notice');
delete_option('actlogpro_admin_menu_location');
delete_site_option('actlogpro_admin_menu_location');
delete_option('actlogpro_retention_period');
delete_site_option('actlogpro_retention_period');
delete_option('actlogpro_items_per_page');
delete_site_option('actlogpro_items_per_page');
delete_option('actlogpro_track_user_events');
delete_site_option('actlogpro_track_user_events');
delete_option('actlogpro_track_post_events');
delete_site_option('actlogpro_track_post_events');
delete_option('actlogpro_track_media_events');
delete_site_option('actlogpro_track_media_events');
delete_option('actlogpro_track_comment_events');
delete_site_option('actlogpro_track_comment_events');
delete_option('actlogpro_track_plugin_events');
delete_site_option('actlogpro_track_plugin_events');
delete_option('actlogpro_track_theme_events');
delete_site_option('actlogpro_track_theme_events');
delete_option('actlogpro_track_widget_events');
delete_site_option('actlogpro_track_widget_events');
delete_option('actlogpro_track_menu_events');
delete_site_option('actlogpro_track_menu_events');
delete_option('actlogpro_track_option_events');
delete_site_option('actlogpro_track_option_events');
delete_option('actlogpro_track_wordpress_events');
delete_site_option('actlogpro_track_wordpress_events');
delete_option('actlogpro_track_security_events');
delete_site_option('actlogpro_track_security_events');
delete_option('actlogpro_excluded_option_names');
delete_site_option('actlogpro_excluded_option_names');
delete_option('actlogpro_excluded_post_types');
delete_site_option('actlogpro_excluded_post_types');
delete_option('actlogpro_exclude_attachments_for_excluded_posts');
delete_site_option('actlogpro_exclude_attachments_for_excluded_posts');
delete_option('actlogpro_enable_json_feed');
delete_site_option('actlogpro_enable_json_feed');
delete_option('actlogpro_enable_rss_feed');
delete_site_option('actlogpro_enable_rss_feed');
delete_option('actlogpro_allow_multiple_expanded_rows');
delete_site_option('actlogpro_allow_multiple_expanded_rows');
delete_option('actlogpro_store_full_ip');
delete_site_option('actlogpro_store_full_ip');
delete_option('actlogpro_login_notification_enabled');
delete_site_option('actlogpro_login_notification_enabled');
delete_option('actlogpro_login_notification_text');
delete_site_option('actlogpro_login_notification_text');
delete_option('actlogpro_remove_data_on_uninstall');
delete_site_option('actlogpro_remove_data_on_uninstall');
delete_option('actlogpro_email_digest_enabled');
delete_site_option('actlogpro_email_digest_enabled');
delete_option('actlogpro_email_digest_frequency');
delete_site_option('actlogpro_email_digest_frequency');
delete_option('actlogpro_email_digest_day');
delete_site_option('actlogpro_email_digest_day');
delete_option('actlogpro_email_digest_time');
delete_site_option('actlogpro_email_digest_time');
delete_option('actlogpro_email_digest_recipients');
delete_site_option('actlogpro_email_digest_recipients');
delete_option('actlogpro_email_digest_last_sent');
delete_site_option('actlogpro_email_digest_last_sent');
delete_option('actlogpro_cache_invalidated');
delete_site_option('actlogpro_cache_invalidated');
delete_option('actlogpro_active_integrations');
delete_site_option('actlogpro_active_integrations');
delete_option('actlogpro_user_deactivated_integrations');
delete_site_option('actlogpro_user_deactivated_integrations');
delete_option('actlogpro_premium_license_valid');
delete_site_option('actlogpro_premium_license_valid');
delete_option('actlogpro_license_info');
delete_site_option('actlogpro_license_info');
delete_option('actlogpro_last_cleanup_run');
delete_site_option('actlogpro_last_cleanup_run');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('actlogpro_db_version');
delete_site_option('actlogpro_db_version');
delete_option('actlogpro_wp_version_before_update');
delete_site_option('actlogpro_wp_version_before_update');
delete_option('actlogpro_wp_target_version');
delete_site_option('actlogpro_wp_target_version');
delete_option('actlogpro_previous_wp_version');
delete_site_option('actlogpro_previous_wp_version');
delete_option('actlogpro_target_wp_version');
delete_site_option('actlogpro_target_wp_version');
delete_option('actlogpro_feed_token_updated');
delete_site_option('actlogpro_feed_token_updated');
delete_option('actlogpro_rss_feed_token');
delete_site_option('actlogpro_rss_feed_token');
delete_option('actlogpro_json_feed_token');
delete_site_option('actlogpro_json_feed_token');
delete_option('actlogpro_was_premium_enabled');
delete_site_option('actlogpro_was_premium_enabled');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_actlogpro_user_logout_%', '_site_transient_actlogpro_user_logout_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_actlogpro_theme_data_%', '_site_transient_actlogpro_theme_data_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_actlogpro_theme_option_updates_%', '_site_transient_actlogpro_theme_option_updates_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_actlogpro_menu_data_%', '_site_transient_actlogpro_menu_data_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_actlogpro_menu_term_data_%', '_site_transient_actlogpro_menu_term_data_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_actlogpro_menu_term_direct_%', '_site_transient_actlogpro_menu_term_direct_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('actlogpro_tracking_settings');
delete_site_transient('actlogpro_tracking_settings');
delete_transient('update_core');
delete_site_transient('update_core');
delete_transient('actlogpro_milestone_check_counter');
delete_site_transient('actlogpro_milestone_check_counter');

// Clear Cron Jobs
wp_clear_scheduled_hook('actlogpro_cleanup_old_logs');
wp_clear_scheduled_hook('actlogpro_send_email_digest');
wp_clear_scheduled_hook('actlogpro_log_widget_bulk_summary');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'actlogpro_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'actlogpro_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'actlogpro_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'actlogpro_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'actlogpro_dashboard_widget_chart' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'actlogpro_dashboard_widget_chart' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'actlogpro_dashboard_widget_chart' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'actlogpro_dashboard_widget_chart' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'actlogpro_quick_tip_index' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'actlogpro_quick_tip_index' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'actlogpro_quick_tip_index' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'actlogpro_quick_tip_index' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'actlogpro_stats_view_preference' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'actlogpro_stats_view_preference' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'actlogpro_stats_view_preference' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'actlogpro_stats_view_preference' ) );

