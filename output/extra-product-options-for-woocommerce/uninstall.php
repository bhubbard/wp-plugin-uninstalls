<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('epofw_view_preference');
delete_site_option('epofw_view_preference');
delete_option('epofw_row_association_migration_done');
delete_site_option('epofw_row_association_migration_done');
delete_option('epofw_custom_table_migration_complete');
delete_site_option('epofw_custom_table_migration_complete');
delete_option('epofw_custom_table_migration_total');
delete_site_option('epofw_custom_table_migration_total');
delete_option('epofw_custom_table_migration_count');
delete_site_option('epofw_custom_table_migration_count');
delete_option('epofw_enable_logging');
delete_site_option('epofw_enable_logging');
delete_option('epofw_install_date');
delete_site_option('epofw_install_date');
delete_option('epofw_custom_tables_version');
delete_site_option('epofw_custom_tables_version');
delete_option('epofw_demo_addons_imported');
delete_site_option('epofw_demo_addons_imported');
delete_option('epofw_pending_demo_import');
delete_site_option('epofw_pending_demo_import');
delete_option('epofw_migration_count');
delete_site_option('epofw_migration_count');
delete_option('epofw_general_data');
delete_site_option('epofw_general_data');
delete_option('epofw_migration_304');
delete_site_option('epofw_migration_304');
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
delete_option('epofw_custom_table_migration_completed_at');
delete_site_option('epofw_custom_table_migration_completed_at');
delete_option('epofw_layout_type_migration_done');
delete_site_option('epofw_layout_type_migration_done');
delete_option('epofw_row_groups_cleanup_done');
delete_site_option('epofw_row_groups_cleanup_done');
delete_option('epofw_columns_groups_migration_complete');
delete_site_option('epofw_columns_groups_migration_complete');
delete_option('epofw_use_custom_tables');
delete_site_option('epofw_use_custom_tables');
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');
delete_option('woocs');
delete_site_option('woocs');
delete_option('epofw_global_settings');
delete_site_option('epofw_global_settings');

// Delete Transients
delete_transient('epofw_custom_table_migration_running');
delete_site_transient('epofw_custom_table_migration_running');
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
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'epofw_mgr_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'epofw_mgr_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'epofw_mgr_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'epofw_mgr_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'epofw_review_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'epofw_review_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'epofw_review_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'epofw_review_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'epofw_migrated_to_custom_tables' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'epofw_migrated_to_custom_tables' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'epofw_migrated_to_custom_tables' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'epofw_migrated_to_custom_tables' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'epofw_prd_opt_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'epofw_prd_opt_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'epofw_prd_opt_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'epofw_prd_opt_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'migration_complete' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'migration_complete' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'migration_complete' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'migration_complete' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'epofw_migrated_to_tables' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'epofw_migrated_to_tables' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'epofw_migrated_to_tables' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'epofw_migrated_to_tables' ) );

