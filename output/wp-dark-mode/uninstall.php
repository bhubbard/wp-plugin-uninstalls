<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('classic-editor-replace');
delete_site_option('classic-editor-replace');
delete_option('wp_dark_mode_admin_enabled_classic_editor');
delete_site_option('wp_dark_mode_admin_enabled_classic_editor');
delete_option('wp_dark_mode_activated');
delete_site_option('wp_dark_mode_activated');
delete_option('hide_wp_dark_mode_recommended_plugins');
delete_site_option('hide_wp_dark_mode_recommended_plugins');
delete_option('wp_dark_mode_upgraded_version');
delete_site_option('wp_dark_mode_upgraded_version');
delete_option('wp_dark_mode_preset_sync_version');
delete_site_option('wp_dark_mode_preset_sync_version');
delete_option('wp_dark_mode_advanced');
delete_site_option('wp_dark_mode_advanced');
delete_option('wp_dark_mode_wc');
delete_site_option('wp_dark_mode_wc');
delete_option('wp_dark_mode_color');
delete_site_option('wp_dark_mode_color');
delete_option('wp_dark_mode_image_settings');
delete_site_option('wp_dark_mode_image_settings');
delete_option('wp_dark_mode_video_settings');
delete_site_option('wp_dark_mode_video_settings');
delete_option('wp_dark_mode_color_presets');
delete_site_option('wp_dark_mode_color_presets');
delete_option('wp_dark_mode_color_preset_id');
delete_site_option('wp_dark_mode_color_preset_id');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_last_send' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_skipped' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_allow_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wp_dark_mode_enabled');
delete_site_option('wp_dark_mode_enabled');
delete_option('wpdm_social_share_enable');
delete_site_option('wpdm_social_share_enable');
delete_option('wpdm_social_share_init');
delete_site_option('wpdm_social_share_init');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpdm_social_share_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpdm_social_share_button_size');
delete_site_option('wpdm_social_share_button_size');

// Delete Transients
delete_transient('wp_dark_mode_recommended_plugins');
delete_site_transient('wp_dark_mode_recommended_plugins');
delete_transient('wp_dark_mode_promo_countdown_timer');
delete_site_transient('wp_dark_mode_promo_countdown_timer');

// Clear Cron Jobs

