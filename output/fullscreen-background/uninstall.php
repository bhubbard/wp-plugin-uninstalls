<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('enweby_fb_post_field_id');
delete_site_option('enweby_fb_post_field_id');
delete_option('enweby_fb_page_field_id');
delete_site_option('enweby_fb_page_field_id');
delete_option('enweby_fb_display_options');
delete_site_option('enweby_fb_display_options');
delete_option('enweby_fb_background_type');
delete_site_option('enweby_fb_background_type');
delete_option('enweby_fb_bg_image');
delete_site_option('enweby_fb_bg_image');
delete_option('enweby_fb_bg_video');
delete_site_option('enweby_fb_bg_video');
delete_option('enweby_fb_bg_color');
delete_site_option('enweby_fb_bg_color');
delete_option('enweby_fb_background_size');
delete_site_option('enweby_fb_background_size');
delete_option('enweby_fb_background_position');
delete_site_option('enweby_fb_background_position');
delete_option('enweby_fb_background_attachment');
delete_site_option('enweby_fb_background_attachment');
delete_option('enweby_fb_overlay_shadow');
delete_site_option('enweby_fb_overlay_shadow');
delete_option('enweby_fb_video_background_position');
delete_site_option('enweby_fb_video_background_position');
delete_option('enweby_fb_video_background_fit');
delete_site_option('enweby_fb_video_background_fit');
delete_option('enweby_fullscreen_background_settings');
delete_site_option('enweby_fullscreen_background_settings');
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
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%-optin-screen' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%-optin-screen' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%-optin-screen' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%-optin-screen' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'enwb_fb_settings_meta_single' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'enwb_fb_settings_meta_single' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'enwb_fb_settings_meta_single' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'enwb_fb_settings_meta_single' ) );

