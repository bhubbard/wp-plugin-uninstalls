<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('swti_options_player');
delete_site_option('swti_options_player');
delete_option('swti_options_rail');
delete_site_option('swti_options_rail');
delete_option('swti_options_status');
delete_site_option('swti_options_status');
delete_option('swti_options_vods');
delete_site_option('swti_options_vods');
delete_option('swti_options_wall');
delete_site_option('swti_options_wall');
delete_option('swti_options');
delete_site_option('swti_options');
delete_option('swti_translations');
delete_site_option('swti_translations');
delete_option('swti_debug_log');
delete_site_option('swti_debug_log');
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
delete_option('swti_options_feature');
delete_site_option('swti_options_feature');
delete_option('swti_options_nav');
delete_site_option('swti_options_nav');

// Delete Transients
delete_transient('swti_twitch_token_expires');
delete_site_transient('swti_twitch_token_expires');
delete_transient('swti_notice_closed5');
delete_site_transient('swti_notice_closed5');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_swti_game_%', '_site_transient_swti_game_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_swti_team_%', '_site_transient_swti_team_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_swti_channel_%', '_site_transient_swti_channel_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('swti_twitch_token');
delete_site_transient('swti_twitch_token');
delete_transient('swti_twitch_auth_token');
delete_site_transient('swti_twitch_auth_token');
delete_transient('swti_twitch_auth_token_expires');
delete_site_transient('swti_twitch_auth_token_expires');

// Clear Cron Jobs
wp_clear_scheduled_hook('swti_cron');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_channel_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_channel_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_channel_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_channel_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_team_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_team_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_team_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_team_status' ) );

