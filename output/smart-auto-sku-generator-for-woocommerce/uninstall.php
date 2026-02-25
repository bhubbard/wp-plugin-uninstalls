<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smart_auto_sku_generator_category_prefixes');
delete_site_option('smart_auto_sku_generator_category_prefixes');
delete_option('smart_auto_sku_generator_sku_length');
delete_site_option('smart_auto_sku_generator_sku_length');
delete_option('smart_auto_sku_generator_overwrite_existing');
delete_site_option('smart_auto_sku_generator_overwrite_existing');
delete_option('smart_auto_sku_generator_auto_bulk_generation');
delete_site_option('smart_auto_sku_generator_auto_bulk_generation');
delete_option('smart_auto_sku_generator_use_dynamic_prefix');
delete_site_option('smart_auto_sku_generator_use_dynamic_prefix');
delete_option('smart_auto_sku_generator_enable_logging');
delete_site_option('smart_auto_sku_generator_enable_logging');
delete_option('smart_auto_sku_generator_bulk_job');
delete_site_option('smart_auto_sku_generator_bulk_job');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'smart_auto_sku_generator_backup_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('smart_auto_sku_generator_last_cleanup');
delete_site_option('smart_auto_sku_generator_last_cleanup');
delete_option('smart_auto_sku_generator_preserve_skus_on_uninstall');
delete_site_option('smart_auto_sku_generator_preserve_skus_on_uninstall');

// Delete Transients
delete_transient('smart_auto_sku_generator_admin_notices');
delete_site_transient('smart_auto_sku_generator_admin_notices');

// Clear Cron Jobs
wp_clear_scheduled_hook('smart_auto_sku_generator_auto_bulk_generation');
wp_clear_scheduled_hook('smart_auto_sku_generator_process_batch');
wp_clear_scheduled_hook('smart_auto_sku_generator_complete_bulk_generation');
wp_clear_scheduled_hook('smart_auto_sku_generator_cleanup_logs');
wp_clear_scheduled_hook('smart_auto_sku_generator_cleanup_old_logs');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_smarausk_force_overwritten' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_smarausk_force_overwritten' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_smarausk_force_overwritten' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_smarausk_force_overwritten' ) );

