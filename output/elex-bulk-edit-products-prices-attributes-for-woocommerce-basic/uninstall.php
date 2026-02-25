<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('elex_bep_filter_checkbox_data');
delete_site_option('elex_bep_filter_checkbox_data');
delete_option('eh_bulk_edit_table_row');
delete_site_option('eh_bulk_edit_table_row');
delete_option('xa_regex_error');
delete_site_option('xa_regex_error');
delete_option('eh_bulk_edit_choosed_variation_id');
delete_site_option('eh_bulk_edit_choosed_variation_id');
delete_option('bulk_edit_filtered_product_ids_for_select_unselect');
delete_site_option('bulk_edit_filtered_product_ids_for_select_unselect');
delete_option('eh_bulk_edit_choosed_product_id');
delete_site_option('eh_bulk_edit_choosed_product_id');
delete_option('xa_bulk_selected_ids');
delete_site_option('xa_bulk_selected_ids');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_review_never_ask_again' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_review_will_do_it_later' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_troubleshoot_never_ask_again' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('eh_pricing_discount_product_price_user_role');
delete_site_option('eh_pricing_discount_product_price_user_role');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_attributes' ) );

