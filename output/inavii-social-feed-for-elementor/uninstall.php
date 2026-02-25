<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('inavii_social_feed_e_version');
delete_site_option('inavii_social_feed_e_version');
delete_option('inavii_social_feed_public_auth_token');
delete_site_option('inavii_social_feed_public_auth_token');
delete_option('inavii_social_feed_number_of_posts_imported');
delete_site_option('inavii_social_feed_number_of_posts_imported');
delete_option('inavii_social_feed_cron_interval');
delete_site_option('inavii_social_feed_cron_interval');
delete_option('inavii_social_feed_email_notifications');
delete_site_option('inavii_social_feed_email_notifications');
delete_option('inavii_social_feed_email_to_notifications');
delete_site_option('inavii_social_feed_email_to_notifications');
delete_option('inavii_social_feed_render_type');
delete_site_option('inavii_social_feed_render_type');
delete_option('inavii_instagram_media_to_download');
delete_site_option('inavii_instagram_media_to_download');
delete_option('inavii_social_feed_version_history');
delete_site_option('inavii_social_feed_version_history');
delete_option('inavii_social_feed_first_active');
delete_site_option('inavii_social_feed_first_active');
delete_option('inavii_social_feed_plugin_do_activation_redirect');
delete_site_option('inavii_social_feed_plugin_do_activation_redirect');
delete_option('inavii_social_feed_cron_last_status');
delete_site_option('inavii_social_feed_cron_last_status');
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
wp_clear_scheduled_hook('inavii_social_feed_update_media');
wp_clear_scheduled_hook('inavii_social_feed_refresh_token');
wp_clear_scheduled_hook('inavii_instagram_import_hook');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_inline_svg' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_inline_svg' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_inline_svg' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_inline_svg' ) );

