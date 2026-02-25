<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vegavend_admin_notices');
delete_site_option('vegavend_admin_notices');
delete_option('vegavend_store_id');
delete_site_option('vegavend_store_id');
delete_option('vegavend_store_name');
delete_site_option('vegavend_store_name');
delete_option('vegavend_store_email');
delete_site_option('vegavend_store_email');
delete_option('vegavend_profile_picture');
delete_site_option('vegavend_profile_picture');
delete_option('vegavend_store_banner');
delete_site_option('vegavend_store_banner');
delete_option('vegavend_company_name');
delete_site_option('vegavend_company_name');
delete_option('vegavend_store_address_street');
delete_site_option('vegavend_store_address_street');
delete_option('vegavend_store_address_street_2');
delete_site_option('vegavend_store_address_street_2');
delete_option('vegavend_store_address_city');
delete_site_option('vegavend_store_address_city');
delete_option('vegavend_store_address_postcode');
delete_site_option('vegavend_store_address_postcode');
delete_option('vegavend_store_address_country');
delete_site_option('vegavend_store_address_country');
delete_option('vegavend_company_id');
delete_site_option('vegavend_company_id');
delete_option('vegavend_vat_number');
delete_site_option('vegavend_vat_number');
delete_option('vegavend_biography');
delete_site_option('vegavend_biography');
delete_option('vegavend_phone_number');
delete_site_option('vegavend_phone_number');
delete_option('vegavend_social_profiles');
delete_site_option('vegavend_social_profiles');
delete_option('vegavend_shipping_methods');
delete_site_option('vegavend_shipping_methods');
delete_option('vegavend_warranty_policy');
delete_site_option('vegavend_warranty_policy');
delete_option('vegavend_payment_method');
delete_site_option('vegavend_payment_method');
delete_option('vegavend_terms_and_conditions');
delete_site_option('vegavend_terms_and_conditions');
delete_option('vegavend_refunds_policy');
delete_site_option('vegavend_refunds_policy');
delete_option('vegavend_shipping_policy');
delete_site_option('vegavend_shipping_policy');
delete_option('vegavend_store_seo_title');
delete_site_option('vegavend_store_seo_title');
delete_option('vegavend_store_seo_meta_description');
delete_site_option('vegavend_store_seo_meta_description');
delete_option('vegavend_store_seo_keywords');
delete_site_option('vegavend_store_seo_keywords');
delete_option('vegavend_identification_verified');
delete_site_option('vegavend_identification_verified');
delete_option('vegavend_address_verified');
delete_site_option('vegavend_address_verified');
delete_option('vegavend_company_id_verified');
delete_site_option('vegavend_company_id_verified');
delete_option('vegavend_vat_number_verified');
delete_site_option('vegavend_vat_number_verified');
delete_option('vegavend_support_number');
delete_site_option('vegavend_support_number');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'vegavend_last_sync_time_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'vegavend_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('vegavend_company_id_number');
delete_site_option('vegavend_company_id_number');
delete_option('vegavend_profile_picture_id');
delete_site_option('vegavend_profile_picture_id');
delete_option('vegavend_store_banner_id');
delete_site_option('vegavend_store_banner_id');
delete_option('vegavend_profile_picture_timestamp');
delete_site_option('vegavend_profile_picture_timestamp');
delete_option('vegavend_store_banner_timestamp');
delete_site_option('vegavend_store_banner_timestamp');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('vegavend_sync_setting');
delete_site_option('vegavend_sync_setting');
delete_option('vegavend_sync_order_debug_recived_api');
delete_site_option('vegavend_sync_order_debug_recived_api');
delete_option('vegavend_sync_orders');
delete_site_option('vegavend_sync_orders');
delete_option('vegavend_import_order_order_woo_main');
delete_site_option('vegavend_import_order_order_woo_main');
delete_option('vegavend_import_order_order__woo_the_end');
delete_site_option('vegavend_import_order_order__woo_the_end');
delete_option('vegavend_error_logs');
delete_site_option('vegavend_error_logs');
delete_option('vegavend_warning_logs');
delete_site_option('vegavend_warning_logs');
delete_option('vegavend_info_logs');
delete_site_option('vegavend_info_logs');
delete_option('vegavend_sync_progress');
delete_site_option('vegavend_sync_progress');
delete_option('vegavend_product_count');
delete_site_option('vegavend_product_count');
delete_option('vegavend_last_sync_duration');
delete_site_option('vegavend_last_sync_duration');
delete_option('vegavend_sync_via_cron');
delete_site_option('vegavend_sync_via_cron');
delete_option('vegavend_last_sync_completion');
delete_site_option('vegavend_last_sync_completion');
delete_option('vegavend_sync_circuit_breaker');
delete_site_option('vegavend_sync_circuit_breaker');
delete_option('vegavend_last_batch_size');
delete_site_option('vegavend_last_batch_size');
delete_option('vegavend_successful_syncs');
delete_site_option('vegavend_successful_syncs');
delete_option('vegavend_failed_syncs');
delete_site_option('vegavend_failed_syncs');
delete_option('vegavend_last_stalled_process');
delete_site_option('vegavend_last_stalled_process');
delete_option('vegavend_last_abandoned_sync');
delete_site_option('vegavend_last_abandoned_sync');
delete_option('vegavend_overdue_actions_sample');
delete_site_option('vegavend_overdue_actions_sample');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('woocommerce_calc_taxes');
delete_site_option('woocommerce_calc_taxes');
delete_option('vegavend_resync_in_progress');
delete_site_option('vegavend_resync_in_progress');
delete_option('vegavend_trigger_sync_on_next_pageload');
delete_site_option('vegavend_trigger_sync_on_next_pageload');
delete_option('vegavend_last_resync');
delete_site_option('vegavend_last_resync');
delete_option('woocommerce_manage_stock');
delete_site_option('woocommerce_manage_stock');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('vegavend_global_price_adjustment');
delete_site_option('vegavend_global_price_adjustment');
delete_option('vegavend_dismiss_notice_time');
delete_site_option('vegavend_dismiss_notice_time');
delete_option('vegavend_api_key');
delete_site_option('vegavend_api_key');
delete_option('vegavend_cron_sync_lock');
delete_site_option('vegavend_cron_sync_lock');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_vegavend_account_data_%', '_site_transient_vegavend_account_data_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('vegavend_bulk_editor_circuit_breaker');
delete_site_transient('vegavend_bulk_editor_circuit_breaker');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_vegavend_category_%', '_site_transient_vegavend_category_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('vegavend_all_categories_cache');
delete_site_transient('vegavend_all_categories_cache');
delete_transient('vegavend_categories_count');
delete_site_transient('vegavend_categories_count');
delete_transient('vegavend_categories_cache');
delete_site_transient('vegavend_categories_cache');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_timestamp', '_site_transient_%_timestamp' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_vegavend_quick_stats_%', '_site_transient_vegavend_quick_stats_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_vegavend_combined_issues_%', '_site_transient_vegavend_combined_issues_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_vegavend_issues_count_%', '_site_transient_vegavend_issues_count_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('vegavend_admin_rejected_products');
delete_site_transient('vegavend_admin_rejected_products');
delete_transient('vegavend_force_resync');
delete_site_transient('vegavend_force_resync');
delete_transient('vegavend_sync_products_running');
delete_site_transient('vegavend_sync_products_running');
delete_transient('vegavend_eligible_products_count');
delete_site_transient('vegavend_eligible_products_count');
delete_transient('vegavend_total_available_products');
delete_site_transient('vegavend_total_available_products');
delete_transient('vegavend_sync_running');
delete_site_transient('vegavend_sync_running');
delete_transient('vegavend_sync_all_delay');
delete_site_transient('vegavend_sync_all_delay');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_vegavend_quick_edit_delete_%', '_site_transient_vegavend_quick_edit_delete_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_vegavend_deleting_product_%', '_site_transient_vegavend_deleting_product_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_vegavend_syncing_product_%', '_site_transient_vegavend_syncing_product_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('vegavend_last_store_id');
delete_site_transient('vegavend_last_store_id');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_vegavend_tasks_status_%', '_site_transient_vegavend_tasks_status_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('vegavend_product_count');
delete_site_transient('vegavend_product_count');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_vegavend_store_check_%', '_site_transient_vegavend_store_check_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_vegavend_store_sync_status_%', '_site_transient_vegavend_store_sync_status_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('vegavend_recalculate_sync_priorities');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vegavend_product_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vegavend_product_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vegavend_product_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vegavend_product_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_gtin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_gtin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_gtin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_gtin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mpn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mpn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mpn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mpn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_vegavend_enable_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_vegavend_enable_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_vegavend_enable_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_vegavend_enable_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_vegavend_product_category_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_vegavend_product_category_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_vegavend_product_category_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_vegavend_product_category_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_vegavend_product_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_vegavend_product_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_vegavend_product_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_vegavend_product_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_vegavend_last_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_vegavend_last_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_vegavend_last_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_vegavend_last_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_vegavend_sync_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_vegavend_sync_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_vegavend_sync_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_vegavend_sync_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_vegavend_sync_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_vegavend_sync_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_vegavend_sync_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_vegavend_sync_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_vegavend_deleted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_vegavend_deleted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_vegavend_deleted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_vegavend_deleted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vegavend_product_last_modified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vegavend_product_last_modified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vegavend_product_last_modified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vegavend_product_last_modified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_vegavend_sync_priority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_vegavend_sync_priority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_vegavend_sync_priority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_vegavend_sync_priority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_original_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_original_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_original_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_original_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_vegavend_product_rejection_reason' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_vegavend_product_rejection_reason' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_vegavend_product_rejection_reason' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_vegavend_product_rejection_reason' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_is_issue_in_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_is_issue_in_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_is_issue_in_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_is_issue_in_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_issue_reasons' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_issue_reasons' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_issue_reasons' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_issue_reasons' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_vegavend_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_vegavend_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_vegavend_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_vegavend_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_vegavend_issues_timestamp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_vegavend_issues_timestamp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_vegavend_issues_timestamp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_vegavend_issues_timestamp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_vegavend_issues' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_vegavend_issues' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_vegavend_issues' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_vegavend_issues' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_vegavend_issues_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_vegavend_issues_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_vegavend_issues_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_vegavend_issues_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_vegavend_sync_error_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_vegavend_sync_error_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_vegavend_sync_error_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_vegavend_sync_error_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_vegavend_sync_duration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_vegavend_sync_duration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_vegavend_sync_duration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_vegavend_sync_duration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_stock_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_stock_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_stock_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_stock_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'total_sales' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'total_sales' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'total_sales' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'total_sales' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_last_modified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_last_modified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_last_modified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_last_modified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_vegavend_last_meaningful_change' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_vegavend_last_meaningful_change' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_vegavend_last_meaningful_change' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_vegavend_last_meaningful_change' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_global_unique_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_global_unique_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_global_unique_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_global_unique_id' ) );

