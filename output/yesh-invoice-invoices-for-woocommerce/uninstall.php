<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_wc_yeshinvoices_test_secret_key');
delete_site_option('_wc_yeshinvoices_test_secret_key');
delete_option('_wc_yeshinvoices_test_user_key');
delete_site_option('_wc_yeshinvoices_test_user_key');
delete_option('_wc_yeshinvoices_title');
delete_site_option('_wc_yeshinvoices_title');
delete_option('_wc_yeshinvoices_notes');
delete_site_option('_wc_yeshinvoices_notes');
delete_option('_wc_yeshinvoices_notes_bottom');
delete_site_option('_wc_yeshinvoices_notes_bottom');
delete_option('_wc_yeshinvoices_currency_id');
delete_site_option('_wc_yeshinvoices_currency_id');
delete_option('_wc_yeshinvoices_invoice_lang_id');
delete_site_option('_wc_yeshinvoices_invoice_lang_id');
delete_option('_wc_yeshinvoices_document_type');
delete_site_option('_wc_yeshinvoices_document_type');
delete_option('_wc_yeshinvoices_send_invoice_sms');
delete_site_option('_wc_yeshinvoices_send_invoice_sms');
delete_option('_wc_yeshinvoices_send_invoice_email');
delete_site_option('_wc_yeshinvoices_send_invoice_email');
delete_option('_wc_yeshinvoices_send_invoice_shipping');
delete_site_option('_wc_yeshinvoices_send_invoice_shipping');
delete_option('_wc_yeshinvoices_includetax');
delete_site_option('_wc_yeshinvoices_includetax');
delete_option('_wc_yeshthanktitle');
delete_site_option('_wc_yeshthanktitle');
delete_option('_wc_yeshthankbody');
delete_site_option('_wc_yeshthankbody');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wc_yeshinvoice_invoice_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wc_yeshinvoice_invoice_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wc_yeshinvoice_invoice_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wc_yeshinvoice_invoice_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wc_yeshinvoice_response' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wc_yeshinvoice_response' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wc_yeshinvoice_response' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wc_yeshinvoice_response' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_payment_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_payment_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_payment_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_payment_method' ) );

