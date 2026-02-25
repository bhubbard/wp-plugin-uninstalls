<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');
delete_option('peprobacsru_auto_change_status');
delete_site_option('peprobacsru_auto_change_status');
delete_option('peprobacsru_status_on_receipt_awaiting_upload');
delete_site_option('peprobacsru_status_on_receipt_awaiting_upload');
delete_option('peprobacsru_status_on_receipt_awaiting_approval');
delete_site_option('peprobacsru_status_on_receipt_awaiting_approval');
delete_option('peprobacsru_status_on_receipt_rejected');
delete_site_option('peprobacsru_status_on_receipt_rejected');
delete_option('peprobacsru_status_on_receipt_approved');
delete_site_option('peprobacsru_status_on_receipt_approved');
delete_option('peprobacsru_html_before_form');
delete_site_option('peprobacsru_html_before_form');
delete_option('peprobacsru_html_after_form');
delete_site_option('peprobacsru_html_after_form');
delete_option('peprobacsru_use_secure_link');
delete_site_option('peprobacsru_use_secure_link');
delete_option('peprobacsru_redirect_after_upload');
delete_site_option('peprobacsru_redirect_after_upload');
delete_option('peprobacsru_allowed_gatewawys');
delete_site_option('peprobacsru_allowed_gatewawys');
delete_option('peprobacsru_allowed_gateways');
delete_site_option('peprobacsru_allowed_gateways');
delete_option('peprobacsru_allowed_file_types');
delete_site_option('peprobacsru_allowed_file_types');
delete_option('peprobacsru_allowed_file_size');
delete_site_option('peprobacsru_allowed_file_size');
delete_option('peprobacsru_show_on_statuses');
delete_site_option('peprobacsru_show_on_statuses');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'receipt_upload_admin_note' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'receipt_upload_admin_note' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'receipt_upload_admin_note' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'receipt_upload_admin_note' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_attached_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_attached_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_attached_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_attached_order' ) );

