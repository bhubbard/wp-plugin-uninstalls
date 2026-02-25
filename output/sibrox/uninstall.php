<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sibro_product_sync_enable_logs');
delete_site_option('sibro_product_sync_enable_logs');
delete_option('sibro_product_sync_auto_sync');
delete_site_option('sibro_product_sync_auto_sync');
delete_option('sibro_product_sync_api_key');
delete_site_option('sibro_product_sync_api_key');
delete_option('sibro_product_sync_filter_categories');
delete_site_option('sibro_product_sync_filter_categories');
delete_option('sibro_product_sync_reseller_discount_type');
delete_site_option('sibro_product_sync_reseller_discount_type');
delete_option('sibro_product_sync_reseller_discount_value');
delete_site_option('sibro_product_sync_reseller_discount_value');
delete_option('sibro_product_sync_apply_discount_to');
delete_site_option('sibro_product_sync_apply_discount_to');
delete_option('sibro_product_sync_filter_product_status');
delete_site_option('sibro_product_sync_filter_product_status');
delete_option('sibro_product_sync_sync_on_order');
delete_site_option('sibro_product_sync_sync_on_order');
delete_option('sibro_product_sync_sync_on_stock_change');
delete_site_option('sibro_product_sync_sync_on_stock_change');
delete_option('sibro_product_sync_show_sync_on_product_page');
delete_site_option('sibro_product_sync_show_sync_on_product_page');
delete_option('sibro_last_sync_time');
delete_site_option('sibro_last_sync_time');
delete_option('sibro_product_sync_api_endpoint');
delete_site_option('sibro_product_sync_api_endpoint');
delete_option('sibro_product_sync_needs_configuration');
delete_site_option('sibro_product_sync_needs_configuration');
delete_option('sibro_collections_mapped');
delete_site_option('sibro_collections_mapped');
delete_option('sibro_category_counter_synced');
delete_site_option('sibro_category_counter_synced');
delete_option('sibrox_fallback_logs');
delete_site_option('sibrox_fallback_logs');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sibro_product_sync_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sibro_product_sync_config_notice_dismissed');
delete_site_option('sibro_product_sync_config_notice_dismissed');
delete_option('sibro_product_sync_sync_notice_dismissed');
delete_site_option('sibro_product_sync_sync_notice_dismissed');
delete_option('sibro_product_sync_db_version');
delete_site_option('sibro_product_sync_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('sibro_product_sync_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sibro_sync_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sibro_sync_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sibro_sync_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sibro_sync_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sibro_discount_override' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sibro_discount_override' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sibro_discount_override' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sibro_discount_override' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sibro_discount_value_override' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sibro_discount_value_override' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sibro_discount_value_override' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sibro_discount_value_override' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sibro_last_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sibro_last_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sibro_last_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sibro_last_sync' ) );

