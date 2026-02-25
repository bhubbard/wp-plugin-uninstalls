<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('etcpf_etsy_shops');
delete_site_option('etcpf_etsy_shops');
delete_option('etcpf_shop_name');
delete_site_option('etcpf_shop_name');
delete_option('ETCPF_RESOLVED');
delete_site_option('ETCPF_RESOLVED');
delete_option('etcpf_attribute_user_map_Etsy');
delete_site_option('etcpf_attribute_user_map_Etsy');
delete_option('etcpf_oauth_token');
delete_site_option('etcpf_oauth_token');
delete_option('etcpf_oauth_refresh_token');
delete_site_option('etcpf_oauth_refresh_token');
delete_option('etcpf_stage');
delete_site_option('etcpf_stage');
delete_option('etcpf_connected_to_shop');
delete_site_option('etcpf_connected_to_shop');
delete_option('etcpf_shop_id');
delete_site_option('etcpf_shop_id');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'etcpf_shop_sections_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'etcpf_shop_sections_count_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'etsy_current_uploading_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('currently_uploading_feed_id');
delete_site_option('currently_uploading_feed_id');
delete_option('et_cp_feed_order');
delete_site_option('et_cp_feed_order');
delete_option('et_cpf_feed_order_reverse');
delete_site_option('et_cpf_feed_order_reverse');
delete_option('etcpf_login_url');
delete_site_option('etcpf_login_url');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'etcpf_etsyfeedActivity_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('etcpf_order_limit');
delete_site_option('etcpf_order_limit');
delete_option('etcf_etsy_to_woo_order_sync_left');
delete_site_option('etcf_etsy_to_woo_order_sync_left');
delete_option('Etsy-etsy-merchant-custom-settings');
delete_site_option('Etsy-etsy-merchant-custom-settings');
delete_option('etcpf_licensekey_expired');
delete_site_option('etcpf_licensekey_expired');
delete_option('Etsy-etsy-merchant-settings');
delete_site_option('Etsy-etsy-merchant-settings');
delete_option('etcpf_update_status');
delete_site_option('etcpf_update_status');
delete_option('etcpf_last_sync_date');
delete_site_option('etcpf_last_sync_date');
delete_option('etcpf_order_limit_reached_mail_sent');
delete_site_option('etcpf_order_limit_reached_mail_sent');
delete_option('etcpf_api_key');
delete_site_option('etcpf_api_key');
delete_option('etcpf_secret_key');
delete_site_option('etcpf_secret_key');
delete_option('etcpf_imported_to_woocommerce');
delete_site_option('etcpf_imported_to_woocommerce');
delete_option('etsy_free_plan_product_import_limit');
delete_site_option('etsy_free_plan_product_import_limit');
delete_option('etsy_linked_product_import_count');
delete_site_option('etsy_linked_product_import_count');
delete_option('etcpf_order_failed_limit_sent');
delete_site_option('etcpf_order_failed_limit_sent');
delete_option('etcpf_currency_code_etsy');
delete_site_option('etcpf_currency_code_etsy');
delete_option('etcpf_variation_image_linkls');
delete_site_option('etcpf_variation_image_linkls');
delete_option('et_cp_feed_delay');
delete_site_option('et_cp_feed_delay');
delete_option('etcpf_shipping_template_id');
delete_site_option('etcpf_shipping_template_id');
delete_option('etcpf_db_upgrade_available');
delete_site_option('etcpf_db_upgrade_available');
delete_option('last_api_hit_timestamp');
delete_site_option('last_api_hit_timestamp');
delete_option('etsy_api_count');
delete_site_option('etsy_api_count');
delete_option('etcpf_oauth_token_secret');
delete_site_option('etcpf_oauth_token_secret');
delete_option('etsy_product_upload_count');
delete_site_option('etsy_product_upload_count');
delete_option('etsy_free_plan_product_upload_limit');
delete_site_option('etsy_free_plan_product_upload_limit');
delete_option('etcpf_processing_profile_id');
delete_site_option('etcpf_processing_profile_id');
delete_option('etcpf_return_policies');
delete_site_option('etcpf_return_policies');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'etsy_variation_on_property_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('etcpf_woo_etsy_connector_url');
delete_site_option('etcpf_woo_etsy_connector_url');
delete_option('etcpf_conversion_api_key');
delete_site_option('etcpf_conversion_api_key');
delete_option('etcpf_failed_order_email_sent');
delete_site_option('etcpf_failed_order_email_sent');
delete_option('etcpf_oauth_verfier');
delete_site_option('etcpf_oauth_verfier');
delete_option('etcpf_shop_disconnected');
delete_site_option('etcpf_shop_disconnected');
delete_option('etcpf_production_partners');
delete_site_option('etcpf_production_partners');
delete_option('etcpf_etsy_shop_ids');
delete_site_option('etcpf_etsy_shop_ids');
delete_option('etcpf_secret');
delete_site_option('etcpf_secret');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_manage_stock');
delete_site_option('woocommerce_manage_stock');
delete_option('woocommerce_hide_out_of_stock_items');
delete_site_option('woocommerce_hide_out_of_stock_items');
delete_option('listing_etsy_et');
delete_site_option('listing_etsy_et');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-etsy-merchant-settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_notify_no_stock_amount');
delete_site_option('woocommerce_notify_no_stock_amount');
delete_option('linked_sku_value_count');
delete_site_option('linked_sku_value_count');
delete_option('etcpf_licensekey');
delete_site_option('etcpf_licensekey');
delete_option('etcpf_localkey');
delete_site_option('etcpf_localkey');
delete_option('etcpf_db_upgraded');
delete_site_option('etcpf_db_upgraded');
delete_option('etcpf_current_db_version');
delete_site_option('etcpf_current_db_version');
delete_option('imported_to_woocommerce');
delete_site_option('imported_to_woocommerce');
delete_option('not_linked_product');
delete_site_option('not_linked_product');
delete_option('linked_product_count');
delete_site_option('linked_product_count');
delete_option('etcpf_last_table_optimization');
delete_site_option('etcpf_last_table_optimization');
delete_option('etcpf_indexes_last_checked');
delete_site_option('etcpf_indexes_last_checked');
delete_option('et_cp_localkey');
delete_site_option('et_cp_localkey');
delete_option('et_cp_feed_limit');
delete_site_option('et_cp_feed_limit');
delete_option('et_cp_feed_count');
delete_site_option('et_cp_feed_count');
delete_option('etsy_order_offset');
delete_site_option('etsy_order_offset');
delete_option('etcpf_license_message');
delete_site_option('etcpf_license_message');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('etcpf_coming_from_product_import');
delete_site_transient('etcpf_coming_from_product_import');
delete_transient('etcpf_updating_counts');
delete_site_transient('etcpf_updating_counts');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('etcpf_notification_message');
delete_site_transient('etcpf_notification_message');
delete_transient('etcpf_error_message');
delete_site_transient('etcpf_error_message');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('auto_etsy_order_hook');
wp_clear_scheduled_hook('auto_feed_submission_hook');
wp_clear_scheduled_hook('update_etsyfeeds_hook');
wp_clear_scheduled_hook('run_refresh_token_cron');
wp_clear_scheduled_hook('etcpf_auto_feed_submission_hook');
wp_clear_scheduled_hook('etcpf_auto_email_failed_orders');
wp_clear_scheduled_hook('etcpf_mutipl_images_upload');
wp_clear_scheduled_hook('etcpf_update_product_counts');
wp_clear_scheduled_hook('etcpf_cleanup_cache');
wp_clear_scheduled_hook('etcpf_product_update_event');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_manage_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_manage_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_manage_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_manage_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_imported_by_etcpf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_imported_by_etcpf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_imported_by_etcpf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_imported_by_etcpf' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'custom_size' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'custom_size' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'custom_size' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'custom_size' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'material' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'material' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'material' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'material' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'brand' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'brand' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'brand' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'brand' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'etcpf_etsy_receipt_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'etcpf_etsy_receipt_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'etcpf_etsy_receipt_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'etcpf_etsy_receipt_id' ) );

