<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jetpack_protect_active');
delete_site_option('jetpack_protect_active');
delete_option('jetpack_offline_mode');
delete_site_option('jetpack_offline_mode');
delete_option('wpcom_public_coming_soon');
delete_site_option('wpcom_public_coming_soon');
delete_option('woocommerce_cart_redirect_after_add');
delete_site_option('woocommerce_cart_redirect_after_add');
delete_option('qlwcdc_add_to_cart');
delete_site_option('qlwcdc_add_to_cart');
delete_option('qlwcdc_add_to_cart_redirect_page');
delete_site_option('qlwcdc_add_to_cart_redirect_page');
delete_option('qlwcdc_wcd_imported2');
delete_site_option('qlwcdc_wcd_imported2');
delete_option('direct_checkout_pro_enabled');
delete_site_option('direct_checkout_pro_enabled');
delete_option('direct_checkout_enabled');
delete_site_option('direct_checkout_enabled');
delete_option('direct_checkout_pro_cart_redirect_url');
delete_site_option('direct_checkout_pro_cart_redirect_url');
delete_option('direct_checkout_cart_redirect_url');
delete_site_option('direct_checkout_cart_redirect_url');
delete_option('qlwcdc_add_to_cart_redirect_url');
delete_site_option('qlwcdc_add_to_cart_redirect_url');
delete_option('direct_checkout_cart_button_text');
delete_site_option('direct_checkout_cart_button_text');
delete_option('qlwcdc_add_product_text');
delete_site_option('qlwcdc_add_product_text');
delete_option('qlwcdc_add_product_text_content');
delete_site_option('qlwcdc_add_product_text_content');
delete_option('qlwcdc_add_archive_text');
delete_site_option('qlwcdc_add_archive_text');
delete_option('qlwcdc_add_archive_text_content');
delete_site_option('qlwcdc_add_archive_text_content');
delete_option('qlwcdc_add_archive_text_in');
delete_site_option('qlwcdc_add_archive_text_in');
delete_option('qlwcdc_wcd_imported');
delete_site_option('qlwcdc_wcd_imported');
delete_option('qlwcdc_add_product_quick_purchase_class');
delete_site_option('qlwcdc_add_product_quick_purchase_class');
delete_option('qlwcdc_add_product_quick_purchase_text');
delete_site_option('qlwcdc_add_product_quick_purchase_text');
delete_option('qlwcdc_remove_checkout_privacy_policy_text');
delete_site_option('qlwcdc_remove_checkout_privacy_policy_text');
delete_option('qlwcdc_remove_checkout_terms_and_conditions');
delete_site_option('qlwcdc_remove_checkout_terms_and_conditions');
delete_option('qlwcdc_remove_checkout_fields');
delete_site_option('qlwcdc_remove_checkout_fields');
delete_option('qlwcdc_remove_checkout_order_comments');
delete_site_option('qlwcdc_remove_checkout_order_comments');
delete_option('qlwcdc_remove_checkout_shipping_address');
delete_site_option('qlwcdc_remove_checkout_shipping_address');
delete_option('qlwcdc_add_to_cart_link');
delete_site_option('qlwcdc_add_to_cart_link');
delete_option('qlwcdc_add_to_cart_message');
delete_site_option('qlwcdc_add_to_cart_message');
delete_option('qlwcdc_replace_cart_url');
delete_site_option('qlwcdc_replace_cart_url');
delete_option('qlwcdc_replace_cart_url_custom');
delete_site_option('qlwcdc_replace_cart_url_custom');

// Delete Transients
delete_transient('jetpack_is_single_user');
delete_site_transient('jetpack_is_single_user');
delete_transient('quadlayers_news_feed');
delete_site_transient('quadlayers_news_feed');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ql_plugin_feedback_%', '_site_transient_ql_plugin_feedback_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_direct_checkout_pro_cart_button_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_direct_checkout_pro_cart_button_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_direct_checkout_pro_cart_button_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_direct_checkout_pro_cart_button_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'qlwcdc_add_product_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'qlwcdc_add_product_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'qlwcdc_add_product_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'qlwcdc_add_product_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'qlwcdc_add_product_text_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'qlwcdc_add_product_text_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'qlwcdc_add_product_text_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'qlwcdc_add_product_text_content' ) );

