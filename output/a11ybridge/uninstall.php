<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('a11yb_install_id');
delete_site_option('a11yb_install_id');
delete_option('a11ybridge_cloud_settings');
delete_site_option('a11ybridge_cloud_settings');
delete_option('a11ybridge_ai_settings');
delete_site_option('a11ybridge_ai_settings');
delete_option('a11ybridge_simplification_settings');
delete_site_option('a11ybridge_simplification_settings');
delete_option('a11ybridge_pro_license_settings');
delete_site_option('a11ybridge_pro_license_settings');
delete_option('a11yb_license_key_hash');
delete_site_option('a11yb_license_key_hash');
delete_option('a11ybridge_plugin_general_settings');
delete_site_option('a11ybridge_plugin_general_settings');
delete_option('a11yb_alttext_daily_last_id');
delete_site_option('a11yb_alttext_daily_last_id');
delete_option('a11ybridge_advanced_settings');
delete_site_option('a11ybridge_advanced_settings');
delete_option('a11ybridge_scanner_settings');
delete_site_option('a11ybridge_scanner_settings');
delete_option('a11yb_next_update_at_ts');
delete_site_option('a11yb_next_update_at_ts');
delete_option('a11yb_reset_date_ts');
delete_site_option('a11yb_reset_date_ts');
delete_option('a11yb_monthly_limit');
delete_site_option('a11yb_monthly_limit');
delete_option('a11yb_ai_credits_remaining');
delete_site_option('a11yb_ai_credits_remaining');
delete_option('a11yb_license_status');
delete_site_option('a11yb_license_status');
delete_option('a11yb_license_expires_at_ts');
delete_site_option('a11yb_license_expires_at_ts');
delete_option('a11ybridge_user_profile_settings');
delete_site_option('a11ybridge_user_profile_settings');
delete_option('a11ybridge_user_privacy_settings');
delete_site_option('a11ybridge_user_privacy_settings');
delete_option('a11ybridge_user_storage_settings');
delete_site_option('a11ybridge_user_storage_settings');
delete_option('a11ybridge_user_defaults_settings');
delete_site_option('a11ybridge_user_defaults_settings');
delete_option('a11ybridge_voice_settings');
delete_site_option('a11ybridge_voice_settings');
delete_option('a11yb_license_domain');
delete_site_option('a11yb_license_domain');
delete_option('a11yb_plan_level');
delete_site_option('a11yb_plan_level');
delete_option('a11yb_monthly_used');
delete_site_option('a11yb_monthly_used');
delete_option('a11yb_reset_date');
delete_site_option('a11yb_reset_date');
delete_option('a11yb_license_created_at');
delete_site_option('a11yb_license_created_at');
delete_option('a11yb_license_expires_at');
delete_site_option('a11yb_license_expires_at');
delete_option('a11yb_license_environment');
delete_site_option('a11yb_license_environment');
delete_option('a11yb_usage_period');
delete_site_option('a11yb_usage_period');
delete_option('a11yb_license_state');
delete_site_option('a11yb_license_state');
delete_option('a11yb_next_update_at');
delete_site_option('a11yb_next_update_at');
delete_option('a11yb_license_created_at_ts');
delete_site_option('a11yb_license_created_at_ts');
delete_option('a11yb_license_updated_at_ts');
delete_site_option('a11yb_license_updated_at_ts');
delete_option('a11ybridge_voice_config');
delete_site_option('a11ybridge_voice_config');
delete_option('a11ybridge_client_secret');
delete_site_option('a11ybridge_client_secret');

// Delete Transients
delete_transient('a11ybridge_license_cache');
delete_site_transient('a11ybridge_license_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('a11ybridge_alttext_daily_scan');
wp_clear_scheduled_hook('a11ybridge_alttext_generate_one');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

