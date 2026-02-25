<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wppfm_processed_products');
delete_site_option('wppfm_processed_products');
delete_option('wppfm_notice_mailaddress');
delete_site_option('wppfm_notice_mailaddress');
delete_option('wppfm_feed_queue');
delete_site_option('wppfm_feed_queue');
delete_option('wppfm_background_process_key');
delete_site_option('wppfm_background_process_key');
delete_option('wppfm_feed_generation_process_process_heartbeat');
delete_site_option('wppfm_feed_generation_process_process_heartbeat');
delete_option('wppfm_enable_performance_monitoring');
delete_site_option('wppfm_enable_performance_monitoring');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wppfm_performance_metrics_active_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wppfm_performance_metrics_history');
delete_site_option('wppfm_performance_metrics_history');
delete_option('wppfm_performance_metrics_latest');
delete_site_option('wppfm_performance_metrics_latest');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wppfm_batch_metadata_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wppfm_auto_feed_fix');
delete_site_option('wppfm_auto_feed_fix');
delete_option('wppfm_memory_warning_dismissed_at');
delete_site_option('wppfm_memory_warning_dismissed_at');
delete_option('yith_wcbr_brands_label');
delete_site_option('yith_wcbr_brands_label');
delete_option('wppfm_omit_price_filters');
delete_site_option('wppfm_omit_price_filters');
delete_option('wppfm_disabled_background_mode');
delete_site_option('wppfm_disabled_background_mode');
delete_option('wppfm_process_logger_status');
delete_site_option('wppfm_process_logger_status');
delete_option('wppfm_show_product_identifiers');
delete_site_option('wppfm_show_product_identifiers');
delete_option('wppfm_manual_channel_update');
delete_site_option('wppfm_manual_channel_update');
delete_option('wppfm_third_party_attribute_keywords');
delete_site_option('wppfm_third_party_attribute_keywords');
delete_option('wppfm_lic_status');
delete_site_option('wppfm_lic_status');
delete_option('wppfm_license_notice_suppressed');
delete_site_option('wppfm_license_notice_suppressed');
delete_option('wppfm_black_friday_promotion_2024_dismissed');
delete_site_option('wppfm_black_friday_promotion_2024_dismissed');
delete_option('wppfm_use_full_url_resolution');
delete_site_option('wppfm_use_full_url_resolution');
delete_option('wppfm_db_version');
delete_site_option('wppfm_db_version');
delete_option('wppfm_lic_key');
delete_site_option('wppfm_lic_key');
delete_option('wppfm_channel_update_check_date');
delete_site_option('wppfm_channel_update_check_date');
delete_option('wppfm_channels_to_update');
delete_site_option('wppfm_channels_to_update');
delete_option('wppfm_pending_dispatch_feeds');
delete_site_option('wppfm_pending_dispatch_feeds');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_lic_status' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_lic_status_date' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_lic_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_lic_expires' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_license_notice_suppressed' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wppfm_latest_weblogs');
delete_site_option('wppfm_latest_weblogs');
delete_option('wppfm_feed_data');
delete_site_option('wppfm_feed_data');
delete_option('wppfm_batch_counter');
delete_site_option('wppfm_batch_counter');
delete_option('wp_enqueue_scripts');
delete_site_option('wp_enqueue_scripts');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'file_path_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'feed_data_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pre_data_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'channel_details_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'relations_table_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('wppfm_running_silent');
delete_site_transient('wppfm_running_silent');
delete_transient('wppfm_nr_of_processed_products');
delete_site_transient('wppfm_nr_of_processed_products');
delete_transient('wppfm_feed_file_size');
delete_site_transient('wppfm_feed_file_size');
delete_transient('wppfm_start_product_id');
delete_site_transient('wppfm_start_product_id');
delete_transient('wppfm_active_feed_id');
delete_site_transient('wppfm_active_feed_id');
delete_transient('wppfm_set_global_background_process');
delete_site_transient('wppfm_set_global_background_process');
delete_transient('wppfm_background_process_is_active');
delete_site_transient('wppfm_background_process_is_active');
delete_transient('wppfm_background_process_started_at');
delete_site_transient('wppfm_background_process_started_at');
delete_transient('wppfm_feed_generation_process_process_lock');
delete_site_transient('wppfm_feed_generation_process_process_lock');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wppfm_feed_completion_context_%', '_site_transient_wppfm_feed_completion_context_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('wppfm_last_memory_failure');
delete_site_transient('wppfm_last_memory_failure');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wppfm_pending_dispatch_%', '_site_transient_wppfm_pending_dispatch_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wppfm_async_nonce_%', '_site_transient_wppfm_async_nonce_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('wppfm_feed_watchdog_cron');
wp_clear_scheduled_hook('wppfm_remove_old_folder_event');
wp_clear_scheduled_hook('wppfm_feed_update_schedule');
wp_clear_scheduled_hook('wppfm_daily_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_variation_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_variation_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_variation_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_variation_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_primary_product_cat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_primary_product_cat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_primary_product_cat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_primary_product_cat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rank_math_primary_product_cat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rank_math_primary_product_cat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rank_math_primary_product_cat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rank_math_primary_product_cat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wppfm_product_brand' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wppfm_product_brand' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wppfm_product_brand' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wppfm_product_brand' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wppfm_product_gtin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wppfm_product_gtin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wppfm_product_gtin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wppfm_product_gtin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wppfm_product_mpn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wppfm_product_mpn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wppfm_product_mpn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wppfm_product_mpn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wppfm_exclude_from_feed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wppfm_exclude_from_feed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wppfm_exclude_from_feed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wppfm_exclude_from_feed' ) );

