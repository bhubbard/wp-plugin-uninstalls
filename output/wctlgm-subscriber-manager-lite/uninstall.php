<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wctlgm_bot_token');
delete_site_option('wctlgm_bot_token');
delete_option('wctlgm_require_activation_flow');
delete_site_option('wctlgm_require_activation_flow');
delete_option('wctlgm_allow_external_invites');
delete_site_option('wctlgm_allow_external_invites');
delete_option('wctlgm_secret_token');
delete_site_option('wctlgm_secret_token');
delete_option('wctlgm_bot_url');
delete_site_option('wctlgm_bot_url');
delete_option('wctlgm_channels');
delete_site_option('wctlgm_channels');
delete_option('wctlgm_activation_flow_migrated');
delete_site_option('wctlgm_activation_flow_migrated');
delete_option('wctlgm_force_activation_flow');
delete_site_option('wctlgm_force_activation_flow');
delete_option('wctlgm_webhook_clicked');
delete_site_option('wctlgm_webhook_clicked');
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
delete_transient('wctlgm_telegram_fetch_channel_id_active');
delete_site_transient('wctlgm_telegram_fetch_channel_id_active');
delete_transient('wctlgm_channel_id_temp_store');
delete_site_transient('wctlgm_channel_id_temp_store');
delete_transient('wctlgm_activation_flow_changed');
delete_site_transient('wctlgm_activation_flow_changed');
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
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_telegram_channel_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_telegram_channel_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_telegram_channel_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_telegram_channel_ids' ) );

