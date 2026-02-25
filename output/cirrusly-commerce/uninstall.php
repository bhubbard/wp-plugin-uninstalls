<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cirrusly_install_api_token');
delete_site_option('cirrusly_install_api_token');
delete_option('cirrusly_gmc_daily_scan_scheduled');
delete_site_option('cirrusly_gmc_daily_scan_scheduled');
delete_option('cirrusly_weekly_report_scheduled');
delete_site_option('cirrusly_weekly_report_scheduled');
delete_option('woocommerce_enable_cost_of_goods_sold');
delete_site_option('woocommerce_enable_cost_of_goods_sold');
delete_option('cirrusly_enable_cost_of_goods_sold');
delete_site_option('cirrusly_enable_cost_of_goods_sold');
delete_option('cirrusly_gmc_merchant_id');
delete_site_option('cirrusly_gmc_merchant_id');
delete_option('cirrusly_scan_config');
delete_site_option('cirrusly_scan_config');
delete_option('cirrusly_weekly_report_last_verify');
delete_site_option('cirrusly_weekly_report_last_verify');
delete_option('cirrusly_gmc_daily_sync_scheduled');
delete_site_option('cirrusly_gmc_daily_sync_scheduled');
delete_option('cirrusly_gmc_cron_last_verify');
delete_site_option('cirrusly_gmc_cron_last_verify');
delete_option('cirrusly_email_settings');
delete_site_option('cirrusly_email_settings');
delete_option('cirrusly_email_log');
delete_site_option('cirrusly_email_log');
delete_option('cirrusly_shipping_config');
delete_site_option('cirrusly_shipping_config');
delete_option('woo_gmc_scan_data');
delete_site_option('woo_gmc_scan_data');
delete_option('cirrusly_content_scan_data');
delete_site_option('cirrusly_content_scan_data');
delete_option('woocommerce_notify_low_stock_amount');
delete_site_option('woocommerce_notify_low_stock_amount');
delete_option('cirrusly_service_account_json');
delete_site_option('cirrusly_service_account_json');
delete_option('cirrusly_gmc_scan_data');
delete_site_option('cirrusly_gmc_scan_data');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cirrusly_gmc_analytics_daily_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cirrusly_msrp_config');
delete_site_option('cirrusly_msrp_config');
delete_option('cirrusly_google_reviews_config');
delete_site_option('cirrusly_google_reviews_config');
delete_option('cirrusly_countdown_rules');
delete_site_option('cirrusly_countdown_rules');
delete_option('cirrusly_badge_config');
delete_site_option('cirrusly_badge_config');
delete_option('cirrusly_gmc_product_mapping');
delete_site_option('cirrusly_gmc_product_mapping');
delete_option('cirrusly_gmc_mapping_config');
delete_site_option('cirrusly_gmc_mapping_config');
delete_option('cirrusly_analytics_preferences');
delete_site_option('cirrusly_analytics_preferences');
delete_option('cirrusly_analytics_cache_version');
delete_site_option('cirrusly_analytics_cache_version');
delete_option('cirrusly_gmc_import_progress');
delete_site_option('cirrusly_gmc_import_progress');
delete_option('cirrusly_gmc_last_import_date');
delete_site_option('cirrusly_gmc_last_import_date');
delete_option('cirrusly_gmc_import_total');
delete_site_option('cirrusly_gmc_import_total');
delete_option('cirrusly_gmc_analytics_imported');
delete_site_option('cirrusly_gmc_analytics_imported');
delete_option('cirrusly_gmc_unmapped_products');
delete_site_option('cirrusly_gmc_unmapped_products');
delete_option('cirrusly_wizard_completed_version');
delete_site_option('cirrusly_wizard_completed_version');
delete_option('cirrusly_last_known_plan');
delete_site_option('cirrusly_last_known_plan');
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
delete_transient('cirrusly_activation_redirect');
delete_site_transient('cirrusly_activation_redirect');
delete_transient('cirrusly_audit_data');
delete_site_transient('cirrusly_audit_data');
delete_transient('cirrusly_dashboard_metrics');
delete_site_transient('cirrusly_dashboard_metrics');
delete_transient('cirrusly_active_promos_stats');
delete_site_transient('cirrusly_active_promos_stats');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cirrusly_gmc_blocked_save_%', '_site_transient_cirrusly_gmc_blocked_save_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cirrusly_datetime_error_%', '_site_transient_cirrusly_datetime_error_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('cirrusly_gmc_scan_debug');
delete_site_transient('cirrusly_gmc_scan_debug');
delete_transient('cirrusly_upgrade_prompt');
delete_site_transient('cirrusly_upgrade_prompt');
delete_transient('cirrusly_wizard_upload_success');
delete_site_transient('cirrusly_wizard_upload_success');
delete_transient('cw_audit_data');
delete_site_transient('cw_audit_data');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('cirrusly_gmc_daily_scan');
wp_clear_scheduled_hook('cirrusly_weekly_profit_report');
wp_clear_scheduled_hook('cirrusly_commerce_gmc_sync');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cirrusly_quota_bar_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cirrusly_quota_bar_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cirrusly_quota_bar_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cirrusly_quota_bar_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cirrusly_api_migration_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cirrusly_api_migration_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cirrusly_api_migration_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cirrusly_api_migration_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_gmc_promotion_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_gmc_promotion_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_gmc_promotion_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_gmc_promotion_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_gla_identifier_exists' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_gla_identifier_exists' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_gla_identifier_exists' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_gla_identifier_exists' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_gmc_product_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_gmc_product_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_gmc_product_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_gmc_product_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cirrusly_map_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cirrusly_map_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cirrusly_map_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cirrusly_map_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_gtin_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_gtin_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_gtin_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_gtin_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_gtin_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_gtin_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_gtin_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_gtin_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_gmc_product_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_gmc_product_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_gmc_product_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_gmc_product_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cogs_total_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cogs_total_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cogs_total_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cogs_total_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cirrusly_est_shipping' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cirrusly_est_shipping' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cirrusly_est_shipping' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cirrusly_est_shipping' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_alg_msrp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_alg_msrp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_alg_msrp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_alg_msrp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_auto_pricing_min_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_auto_pricing_min_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_auto_pricing_min_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_auto_pricing_min_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cirrusly_sale_end' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cirrusly_sale_end' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cirrusly_sale_end' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cirrusly_sale_end' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cirrusly_enable_countdown' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cirrusly_enable_countdown' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cirrusly_enable_countdown' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cirrusly_enable_countdown' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cw_sale_end' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cw_sale_end' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cw_sale_end' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cw_sale_end' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_gmc_custom_label_0' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_gmc_custom_label_0' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_gmc_custom_label_0' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_gmc_custom_label_0' ) );

