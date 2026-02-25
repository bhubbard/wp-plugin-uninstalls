<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('varihu_sync_processed');
delete_site_option('varihu_sync_processed');
delete_option('varihu_sync_total');
delete_site_option('varihu_sync_total');
delete_option('varihu_sync_last_error');
delete_site_option('varihu_sync_last_error');
delete_option('varihu_cache_last_sync');
delete_site_option('varihu_cache_last_sync');
delete_option('varihu_sync_running');
delete_site_option('varihu_sync_running');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('varihu_activated');
delete_site_option('varihu_activated');
delete_option('varihu_cache_sync_status');
delete_site_option('varihu_cache_sync_status');
delete_option('varihu_migration_version');
delete_site_option('varihu_migration_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_transient_timeout_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('varihu_cache_db_version');
delete_site_option('varihu_cache_db_version');
delete_option('varihu_license_data');
delete_site_option('varihu_license_data');
delete_option('varihu_license_key');
delete_site_option('varihu_license_key');
delete_option('varihu_license_tier');
delete_site_option('varihu_license_tier');
delete_option('varihu_license_expires');
delete_site_option('varihu_license_expires');
delete_option('varihu_version');
delete_site_option('varihu_version');
delete_option('varihu_installed_date');
delete_site_option('varihu_installed_date');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_varihu_security_incident_%', '_site_transient_varihu_security_incident_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('varihu_security_incident_hmac_validation_failed');
delete_site_transient('varihu_security_incident_hmac_validation_failed');

// Clear Cron Jobs
wp_clear_scheduled_hook('varihu_sync_imported_variation');
wp_clear_scheduled_hook('varihu_validate_license_daily');
wp_clear_scheduled_hook('varihu_cache_sync_batch');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'attribute_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'attribute_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'attribute_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'attribute_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_tax_class' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_tax_class' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_tax_class' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_tax_class' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

