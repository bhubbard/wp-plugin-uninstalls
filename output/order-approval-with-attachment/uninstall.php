<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sg_del_attachment');
delete_site_option('sg_del_attachment');
delete_option('sg_enable_order_approval');
delete_site_option('sg_enable_order_approval');
delete_option('sg_enable_order_edit');
delete_site_option('sg_enable_order_edit');
delete_option('sg_attach_enable_order_approval');
delete_site_option('sg_attach_enable_order_approval');
delete_option('sg_attach_label');
delete_site_option('sg_attach_label');
delete_option('sg_attach_upload_label');
delete_site_option('sg_attach_upload_label');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sg_product_attach_enable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sg_product_attach_enable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sg_product_attach_enable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sg_product_attach_enable' ) );

