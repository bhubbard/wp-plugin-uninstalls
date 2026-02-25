<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('editsafw_enable_address_edit');
delete_site_option('editsafw_enable_address_edit');
delete_option('editsafw_max_address_changes');
delete_site_option('editsafw_max_address_changes');
delete_option('editsafw_allowed_order_statuses');
delete_site_option('editsafw_allowed_order_statuses');
delete_option('editsafw_editable_shipping_fields');
delete_site_option('editsafw_editable_shipping_fields');
delete_option('editsafw_shipping_email_template');
delete_site_option('editsafw_shipping_email_template');
delete_option('editsafw_refund_email_template');
delete_site_option('editsafw_refund_email_template');
delete_option('woocommerce_stripe_settings');
delete_site_option('woocommerce_stripe_settings');
delete_option('woocommerce-ppcp-settings');
delete_site_option('woocommerce-ppcp-settings');
delete_option('woocommerce-ppcp-data-common');
delete_site_option('woocommerce-ppcp-data-common');
delete_option('woocommerce_razorpay_settings');
delete_site_option('woocommerce_razorpay_settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

