<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tryloom_try_on_method');
delete_site_option('tryloom_try_on_method');
delete_option('tryloom_enabled');
delete_site_option('tryloom_enabled');
delete_option('tryloom_platform_key');
delete_site_option('tryloom_platform_key');
delete_option('tryloom_allowed_categories');
delete_site_option('tryloom_allowed_categories');
delete_option('tryloom_button_placement');
delete_site_option('tryloom_button_placement');
delete_option('tryloom_theme_color');
delete_site_option('tryloom_theme_color');
delete_option('tryloom_primary_color');
delete_site_option('tryloom_primary_color');
delete_option('tryloom_retry_button');
delete_site_option('tryloom_retry_button');
delete_option('tryloom_custom_popup_css');
delete_site_option('tryloom_custom_popup_css');
delete_option('tryloom_custom_button_css');
delete_site_option('tryloom_custom_button_css');
delete_option('tryloom_custom_account_css');
delete_site_option('tryloom_custom_account_css');
delete_option('tryloom_save_photos');
delete_site_option('tryloom_save_photos');
delete_option('tryloom_generation_limit');
delete_site_option('tryloom_generation_limit');
delete_option('tryloom_time_period');
delete_site_option('tryloom_time_period');
delete_option('tryloom_delete_photos_days');
delete_site_option('tryloom_delete_photos_days');
delete_option('tryloom_allowed_user_roles');
delete_site_option('tryloom_allowed_user_roles');
delete_option('tryloom_enable_history');
delete_site_option('tryloom_enable_history');
delete_option('tryloom_enable_logging');
delete_site_option('tryloom_enable_logging');
delete_option('tryloom_admin_user_roles');
delete_site_option('tryloom_admin_user_roles');
delete_option('tryloom_show_popup_errors');
delete_site_option('tryloom_show_popup_errors');
delete_option('tryloom_remove_data_on_delete');
delete_site_option('tryloom_remove_data_on_delete');
delete_option('tryloom_subscription_ended');
delete_site_option('tryloom_subscription_ended');
delete_option('tryloom_free_trial_error');
delete_site_option('tryloom_free_trial_error');
delete_option('tryloom_usage_used');
delete_site_option('tryloom_usage_used');
delete_option('tryloom_usage_limit');
delete_site_option('tryloom_usage_limit');
delete_option('tryloom_free_platform_key');
delete_site_option('tryloom_free_platform_key');
delete_option('tryloom_instance_id');
delete_site_option('tryloom_instance_id');
delete_option('tryloom_status_check_count');
delete_site_option('tryloom_status_check_count');
delete_option('tryloom_brand_watermark');
delete_site_option('tryloom_brand_watermark');
delete_option('tryloom_version');
delete_site_option('tryloom_version');
delete_option('tryloom_flush_rewrite_rules');
delete_site_option('tryloom_flush_rewrite_rules');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'tryloom_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('tryloom_legacy_migrated');
delete_site_option('tryloom_legacy_migrated');

// Delete Transients
delete_transient('tryloom_dashboard_stats');
delete_site_transient('tryloom_dashboard_stats');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_tryloom_variations_%', '_site_transient_tryloom_variations_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('wc_try_on_verification_lock');
delete_site_transient('wc_try_on_verification_lock');

// Clear Cron Jobs
wp_clear_scheduled_hook('tryloom_check_account_status');
wp_clear_scheduled_hook('tryloom_cleanup_inactive_users');
wp_clear_scheduled_hook('tryloom_delete_generated_image');
wp_clear_scheduled_hook('tryloom_cleanup_cron');
wp_clear_scheduled_hook('wc_try_on_cleanup_inactive_users');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_tryloom_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_tryloom_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_tryloom_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_tryloom_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tryloom_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tryloom_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tryloom_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tryloom_last_login' ) );

