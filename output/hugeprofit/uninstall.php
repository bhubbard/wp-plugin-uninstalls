<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hugeprofit_api_token');
delete_site_option('hugeprofit_api_token');
delete_option('hugeprofit_sync_in_progress');
delete_site_option('hugeprofit_sync_in_progress');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'hugeprofit_background_token_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('hugeprofit_crm_url');
delete_site_option('hugeprofit_crm_url');
delete_option('hugeprofit_background_token_import');
delete_site_option('hugeprofit_background_token_import');
delete_option('hugeprofit_background_token_export');
delete_site_option('hugeprofit_background_token_export');
delete_option('hugeprofit_server_error');
delete_site_option('hugeprofit_server_error');
delete_option('hugeprofit_integration_id');
delete_site_option('hugeprofit_integration_id');
delete_option('hugeprofit_cron_check');
delete_site_option('hugeprofit_cron_check');
delete_option('hugeprofit_cron_check_time');
delete_site_option('hugeprofit_cron_check_time');
delete_option('hugeprofit_force_alternative_method');
delete_site_option('hugeprofit_force_alternative_method');
delete_option('hugeprofit_user_token');
delete_site_option('hugeprofit_user_token');
delete_option('hugeprofit_user_id');
delete_site_option('hugeprofit_user_id');
delete_option('hugeprofit_ident');
delete_site_option('hugeprofit_ident');
delete_option('hugeprofit_auto_sync');
delete_site_option('hugeprofit_auto_sync');

// Delete Transients
delete_transient('hugeprofit_reference_info');
delete_site_transient('hugeprofit_reference_info');

// Clear Cron Jobs
wp_clear_scheduled_hook('hugeprofit_export_products_batch');
wp_clear_scheduled_hook('hugeprofit_import_products_batch');
wp_clear_scheduled_hook('hugeprofit_auto_sync_products');
wp_clear_scheduled_hook('hugeprofit_update_crm_url');
wp_clear_scheduled_hook('hugeprofit_sync_single_product');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_hugeprofit_cost_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_hugeprofit_cost_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_hugeprofit_cost_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_hugeprofit_cost_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_hugeprofit_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_hugeprofit_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_hugeprofit_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_hugeprofit_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_hugeprofit_synthetic_parent_for_hp_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_hugeprofit_synthetic_parent_for_hp_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_hugeprofit_synthetic_parent_for_hp_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_hugeprofit_synthetic_parent_for_hp_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_hugeprofit_test_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_hugeprofit_test_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_hugeprofit_test_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_hugeprofit_test_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_hugeprofit_barcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_hugeprofit_barcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_hugeprofit_barcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_hugeprofit_barcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_hugeprofit_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_hugeprofit_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_hugeprofit_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_hugeprofit_image_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_global_unique_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_global_unique_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_global_unique_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_global_unique_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_hugeprofit_sync_lock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_hugeprofit_sync_lock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_hugeprofit_sync_lock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_hugeprofit_sync_lock' ) );

