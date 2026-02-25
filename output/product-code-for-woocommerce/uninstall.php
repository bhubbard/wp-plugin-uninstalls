<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('product_code_db_updated');
delete_site_option('product_code_db_updated');
delete_option('product_code_second_show');
delete_site_option('product_code_second_show');
delete_option('product_code_text');
delete_site_option('product_code_text');
delete_option('product_code_text_second');
delete_site_option('product_code_text_second');
delete_option('product_code_quik_edit_text');
delete_site_option('product_code_quik_edit_text');
delete_option('product_code_quik_edit_text_second');
delete_site_option('product_code_quik_edit_text_second');
delete_option('product_code_hide_empty_field');
delete_site_option('product_code_hide_empty_field');
delete_option('pcfw_hide_wc_gtin_field');
delete_site_option('pcfw_hide_wc_gtin_field');
delete_option('product_code');
delete_site_option('product_code');
delete_option('product_code_second');
delete_site_option('product_code_second');
delete_option('pcfw_hide_from_customer_orders');
delete_site_option('pcfw_hide_from_customer_orders');
delete_option('pcfw_structure_data');
delete_site_option('pcfw_structure_data');
delete_option('pcfw_structured_data_field');
delete_site_option('pcfw_structured_data_field');
delete_option('hide_product_code_on_user_side');
delete_site_option('hide_product_code_on_user_side');
delete_option('hide_second_product_code_on_user_side');
delete_site_option('hide_second_product_code_on_user_side');
delete_option('product_code_for_admin');
delete_site_option('product_code_for_admin');
delete_option('pcfw_delete_data_on_uninstall');
delete_site_option('pcfw_delete_data_on_uninstall');
delete_option('product_code_update');
delete_site_option('product_code_update');
delete_option('product_code_info');
delete_site_option('product_code_info');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pcfw_notice_clicked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pcfw_notice_clicked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pcfw_notice_clicked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pcfw_notice_clicked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pcfw_notice_last_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pcfw_notice_last_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pcfw_notice_last_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pcfw_notice_last_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_code_second' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_code_second' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_code_second' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_code_second' ) );

