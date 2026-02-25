<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pwcp_category_assignments_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pwcp_last_settings_export');
delete_site_option('pwcp_last_settings_export');
delete_option('pwcp_general_settings');
delete_site_option('pwcp_general_settings');
delete_option('pwcp_design_settings');
delete_site_option('pwcp_design_settings');
delete_option('pwcp_calculation_settings');
delete_site_option('pwcp_calculation_settings');
delete_option('pwcp_text_settings');
delete_site_option('pwcp_text_settings');
delete_option('pwcp_advanced_settings');
delete_site_option('pwcp_advanced_settings');
delete_option('pwcp_uninstall_delete_data');
delete_site_option('pwcp_uninstall_delete_data');
delete_option('pwcp_uninstall_settings_exported');
delete_site_option('pwcp_uninstall_settings_exported');
delete_option('pwcp_activation_time');
delete_site_option('pwcp_activation_time');
delete_option('pwcp_plugin_version');
delete_site_option('pwcp_plugin_version');
delete_option('pwcp_db_version');
delete_site_option('pwcp_db_version');
delete_option('pwcp_enable_calculation_logging');
delete_site_option('pwcp_enable_calculation_logging');
delete_option('pwcp_deactivation_time');
delete_site_option('pwcp_deactivation_time');
delete_option('pwcp_column_migration_completed');
delete_site_option('pwcp_column_migration_completed');
delete_option('pwcp_uninstall_notice_dismissed');
delete_site_option('pwcp_uninstall_notice_dismissed');
delete_option('pwcp_data_preserved_on');
delete_site_option('pwcp_data_preserved_on');

// Delete Transients
delete_transient('pwcp_import_export_notice');
delete_site_transient('pwcp_import_export_notice');
delete_transient('pwcp_uninstall_preference_saved');
delete_site_transient('pwcp_uninstall_preference_saved');

// Clear Cron Jobs
wp_clear_scheduled_hook('pwcp_daily_cleanup');
wp_clear_scheduled_hook('pwcp_weekly_analytics_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pwcp_calculator_view' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pwcp_calculator_view' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pwcp_calculator_view' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pwcp_calculator_view' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pwcp_assigned_calculators' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pwcp_assigned_calculators' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pwcp_assigned_calculators' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pwcp_assigned_calculators' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_price' ) );

