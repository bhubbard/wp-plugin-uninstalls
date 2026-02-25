<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alg_wc_user_products_add_to_my_account');
delete_site_option('alg_wc_user_products_add_to_my_account');
delete_option('alg_wc_user_products_my_account_tab_content');
delete_site_option('alg_wc_user_products_my_account_tab_content');
delete_option('alg_wc_user_products_fields_enabled');
delete_site_option('alg_wc_user_products_fields_enabled');
delete_option('alg_wc_user_products_fields_required');
delete_site_option('alg_wc_user_products_fields_required');
delete_option('alg_wc_user_products_status');
delete_site_option('alg_wc_user_products_status');
delete_option('alg_wc_user_products_user_visibility');
delete_site_option('alg_wc_user_products_user_visibility');
delete_option('alg_wc_user_products_product_type');
delete_site_option('alg_wc_user_products_product_type');
delete_option('alg_wc_user_products_custom_taxonomies_total');
delete_site_option('alg_wc_user_products_custom_taxonomies_total');
delete_option('alg_wc_user_products_custom_taxonomy_enabled');
delete_site_option('alg_wc_user_products_custom_taxonomy_enabled');
delete_option('alg_wc_user_products_custom_taxonomy_required');
delete_site_option('alg_wc_user_products_custom_taxonomy_required');
delete_option('alg_wc_user_products_custom_taxonomy_id');
delete_site_option('alg_wc_user_products_custom_taxonomy_id');
delete_option('alg_wc_user_products_custom_taxonomy_title');
delete_site_option('alg_wc_user_products_custom_taxonomy_title');
delete_option('alg_wc_user_products_custom_fields_total');
delete_site_option('alg_wc_user_products_custom_fields_total');
delete_option('alg_wc_user_products_custom_field_enabled');
delete_site_option('alg_wc_user_products_custom_field_enabled');
delete_option('alg_wc_user_products_custom_field_required');
delete_site_option('alg_wc_user_products_custom_field_required');
delete_option('alg_wc_user_products_custom_field_meta_key');
delete_site_option('alg_wc_user_products_custom_field_meta_key');
delete_option('alg_wc_user_products_custom_field_title');
delete_site_option('alg_wc_user_products_custom_field_title');
delete_option('alg_wc_user_products_require_unique_title');
delete_site_option('alg_wc_user_products_require_unique_title');
delete_option('alg_wc_user_products_emails_enabled');
delete_site_option('alg_wc_user_products_emails_enabled');
delete_option('alg_wc_user_products_emails_to');
delete_site_option('alg_wc_user_products_emails_to');
delete_option('alg_wc_user_products_emails_subject');
delete_site_option('alg_wc_user_products_emails_subject');
delete_option('alg_wc_user_products_emails_message');
delete_site_option('alg_wc_user_products_emails_message');
delete_option('alg_wc_user_products_message_product_successfully_added');
delete_site_option('alg_wc_user_products_message_product_successfully_added');
delete_option('alg_wc_user_products_message_product_successfully_edited');
delete_site_option('alg_wc_user_products_message_product_successfully_edited');
delete_option('alg_wc_user_products_price_step');
delete_site_option('alg_wc_user_products_price_step');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('alg_wc_user_products_version');
delete_site_option('alg_wc_user_products_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_url' ) );

