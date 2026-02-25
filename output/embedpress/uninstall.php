<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('classic-editor-replace');
delete_site_option('classic-editor-replace');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%:elements' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%:document' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('embedpress_feedback_submited');
delete_site_option('embedpress_feedback_submited');
delete_option('embedpress_analytics_tracking_enabled');
delete_site_option('embedpress_analytics_tracking_enabled');
delete_option('embedpress_activation_redirect_done');
delete_site_option('embedpress_activation_redirect_done');
delete_option('enabled_elementor_scripts');
delete_site_option('enabled_elementor_scripts');
delete_option('ep_instagram_feed_data');
delete_site_option('ep_instagram_feed_data');
delete_option('ep_instagram_account_data');
delete_site_option('ep_instagram_account_data');
delete_option('is_calendly_connected');
delete_site_option('is_calendly_connected');
delete_option('calendly_tokens');
delete_site_option('calendly_tokens');
delete_option('calendly_user_info');
delete_site_option('calendly_user_info');
delete_option('calendly_event_types');
delete_site_option('calendly_event_types');
delete_option('calendly_scheduled_events');
delete_site_option('calendly_scheduled_events');
delete_option('calendly_invitees_list');
delete_site_option('calendly_invitees_list');
delete_option('embedpress_social_dismiss_notice');
delete_site_option('embedpress_social_dismiss_notice');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%:youtube' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('epgc_client_secret');
delete_site_option('epgc_client_secret');
delete_option('epgc_cache_time');
delete_site_option('epgc_cache_time');
delete_option('epgc_selected_calendar_ids');
delete_site_option('epgc_selected_calendar_ids');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%:global_brand' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('embedpress_last_popup_version');
delete_site_option('embedpress_last_popup_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%:vimeo' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%:dailymotion' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('embedpress_hub_banner_dismissed');
delete_site_option('embedpress_hub_banner_dismissed');
delete_option('embedpress_hub_popup_dismissed');
delete_site_option('embedpress_hub_popup_dismissed');
delete_option('embedpress_main_banner_dismissed');
delete_site_option('embedpress_main_banner_dismissed');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%:opensea' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('embedpress_feature_notice_analytics_dismissed');
delete_site_option('embedpress_feature_notice_analytics_dismissed');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%:spotify' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%:twitch' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%:wistia' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('embedpress_analytics_last_cleanup');
delete_site_option('embedpress_analytics_last_cleanup');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_transient_timeout_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('embedpress_email_reports');
delete_site_option('embedpress_email_reports');
delete_option('embedpress_settings');
delete_site_option('embedpress_settings');
delete_option('embedpress_email_reports_settings');
delete_site_option('embedpress_email_reports_settings');
delete_option('embedpress_analytics_db_version');
delete_site_option('embedpress_analytics_db_version');
delete_option('wpdeveloper_plugins_data');
delete_site_option('wpdeveloper_plugins_data');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpins_deactivation_reason_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpins_deactivation_details_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpins_allow_tracking');
delete_site_option('wpins_allow_tracking');
delete_option('wpins_last_track_time');
delete_site_option('wpins_last_track_time');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wpins_block_notice');
delete_site_option('wpins_block_notice');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_hash_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ep_instagram_hashtag_feed');
delete_site_option('ep_instagram_hashtag_feed');
delete_option('embedpress_pro_software__license_status');
delete_site_option('embedpress_pro_software__license_status');
delete_option('embedpress_milestone_level');
delete_site_option('embedpress_milestone_level');
delete_option('is_embedpress_milestone_showing');
delete_site_option('is_embedpress_milestone_showing');
delete_option('embedpress_milestone_current_level');
delete_site_option('embedpress_milestone_current_level');
delete_option('embedpress_milestone_current_trigger');
delete_site_option('embedpress_milestone_current_trigger');
delete_option('embedpress_last_milestone_version');
delete_site_option('embedpress_last_milestone_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'youtube_channel_info_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('epgc_refresh_token');
delete_site_option('epgc_refresh_token');
delete_option('epgc_access_token');
delete_site_option('epgc_access_token');
delete_option('epgc_api_key');
delete_site_option('epgc_api_key');
delete_option('pgc_public_calendarlist');
delete_site_option('pgc_public_calendarlist');
delete_option('epgc_calendarlist');
delete_site_option('epgc_calendarlist');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'epgc_notices_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('epgc_colorlist');
delete_site_option('epgc_colorlist');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_embedpress_feedback_dupe_%', '_site_transient_embedpress_feedback_dupe_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('embedpress_last_mail_error');
delete_site_transient('embedpress_last_mail_error');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_instagram_user_info_%', '_site_transient_instagram_user_info_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_instagram_posts_%', '_site_transient_instagram_posts_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_instagram_user_id_%', '_site_transient_instagram_user_id_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_instagram_user_data_%', '_site_transient_instagram_user_data_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('embedpress_total_content_count');
delete_site_transient('embedpress_total_content_count');
delete_transient('embedpress_milestone_notifications');
delete_site_transient('embedpress_milestone_notifications');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_calendly_events_list_%', '_site_transient_calendly_events_list_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('calendly_events_list');
delete_site_transient('calendly_events_list');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_calendly_invitee_list_%', '_site_transient_calendly_invitee_list_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('calendly_invitee_list');
delete_site_transient('calendly_invitee_list');
delete_transient('embedpress_pro_software__license_data');
delete_site_transient('embedpress_pro_software__license_data');
delete_transient('wpnotice_priority_time_expired');
delete_site_transient('wpnotice_priority_time_expired');

// Clear Cron Jobs
wp_clear_scheduled_hook('embedpress_backup_cleanup_action');
wp_clear_scheduled_hook('embedpress_daily_milestone_check');
wp_clear_scheduled_hook('embedpress_weekly_analytics_report');
wp_clear_scheduled_hook('embedpress_monthly_analytics_report');
wp_clear_scheduled_hook('embedpress_cache_cleanup_action');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'wpcf-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'wpcf-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'wpcf-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'wpcf-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'ep_base_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'ep_base_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'ep_base_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'ep_base_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'hash_key_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'hash_key_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'hash_key_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'hash_key_%' ) );

