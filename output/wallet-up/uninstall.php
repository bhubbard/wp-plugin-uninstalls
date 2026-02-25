<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wallet_up_settings');
delete_site_option('wallet_up_settings');
delete_option('wallet_up_transfer_call');
delete_site_option('wallet_up_transfer_call');
delete_option('wallet_up_display_settings');
delete_site_option('wallet_up_display_settings');
delete_option('wallet_up_business_card_data');
delete_site_option('wallet_up_business_card_data');
delete_option('wallet_up_log_config');
delete_site_option('wallet_up_log_config');
delete_option('wallet_up_db_version');
delete_site_option('wallet_up_db_version');
delete_option('wallet_up_version');
delete_site_option('wallet_up_version');
delete_option('wallet_up_version_backup');
delete_site_option('wallet_up_version_backup');
delete_option('wallet_up_migration_log');
delete_site_option('wallet_up_migration_log');
delete_option('wallet_up_wc_version');
delete_site_option('wallet_up_wc_version');
delete_option('wallet_up_wc_settings');
delete_site_option('wallet_up_wc_settings');
delete_option('wallet_up_transactions_table_version');
delete_site_option('wallet_up_transactions_table_version');
delete_option('wallet_up_enabled_methods');
delete_site_option('wallet_up_enabled_methods');
delete_option('wallet_up_encryption_key');
delete_site_option('wallet_up_encryption_key');
delete_option('wallet_up_flush_rules');
delete_site_option('wallet_up_flush_rules');
delete_option('wallet_up_quick_access_count');
delete_site_option('wallet_up_quick_access_count');
delete_option('wallet_up_activated');
delete_site_option('wallet_up_activated');
delete_option('wallet_up_transient_registry');
delete_site_option('wallet_up_transient_registry');
delete_option('wallet_up_woocommerce_display_settings');
delete_site_option('wallet_up_woocommerce_display_settings');
delete_option('woocommerce_settings');
delete_site_option('woocommerce_settings');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('wallet_up_woo_settings');
delete_site_option('wallet_up_woo_settings');
delete_option('wallet_up_wpforms_template_enabled');
delete_site_option('wallet_up_wpforms_template_enabled');
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
delete_transient('wallet_up_compatibility_issues');
delete_site_transient('wallet_up_compatibility_issues');
delete_transient('wallet_up_activation_redirect');
delete_site_transient('wallet_up_activation_redirect');
delete_transient('wallet_up_preview_data');
delete_site_transient('wallet_up_preview_data');
delete_transient('wallet_up_business_card_data');
delete_site_transient('wallet_up_business_card_data');
delete_transient('wallet_up_premium_status_check');
delete_site_transient('wallet_up_premium_status_check');
delete_transient('wallet_up_last_backup_time');
delete_site_transient('wallet_up_last_backup_time');
delete_transient('wc_blocks_payment_method_type_registry');
delete_site_transient('wc_blocks_payment_method_type_registry');
delete_transient('wc_gateway_wallet_up_initialized');
delete_site_transient('wc_gateway_wallet_up_initialized');
delete_transient('wpforms_templates');
delete_site_transient('wpforms_templates');
delete_transient('wpforms_available_templates');
delete_site_transient('wpforms_available_templates');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('wallet_up_cleanup_urls');
wp_clear_scheduled_hook('wallet_up_cleanup_analytics');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wallet_up_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wallet_up_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wallet_up_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wallet_up_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_notice' ) );

