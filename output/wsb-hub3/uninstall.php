<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wsb_hub3_receiver_name');
delete_site_option('wsb_hub3_receiver_name');
delete_option('wsb_hub3_order_status');
delete_site_option('wsb_hub3_order_status');
delete_option('wsb_hub3_croatian_customers_only');
delete_site_option('wsb_hub3_croatian_customers_only');
delete_option('wsb_hub3_receiver_iban');
delete_site_option('wsb_hub3_receiver_iban');
delete_option('wc_wsb_hub3_admin_tab_img_type');
delete_site_option('wc_wsb_hub3_admin_tab_img_type');
delete_option('wsb_hub3_img_padding');
delete_site_option('wsb_hub3_img_padding');
delete_option('wsb_hub3_img_color');
delete_site_option('wsb_hub3_img_color');
delete_option('wsb_hub3_receiver_address');
delete_site_option('wsb_hub3_receiver_address');
delete_option('wsb_hub3_receiver_postcode');
delete_site_option('wsb_hub3_receiver_postcode');
delete_option('wsb_hub3_receiver_city');
delete_site_option('wsb_hub3_receiver_city');
delete_option('wsb_hub3_receiver_model');
delete_site_option('wsb_hub3_receiver_model');
delete_option('wsb_hub3_payment_purpose');
delete_site_option('wsb_hub3_payment_purpose');
delete_option('wsb_hub3_payment_description');
delete_site_option('wsb_hub3_payment_description');
delete_option('wsb_hub3_bank_accounts_display');
delete_site_option('wsb_hub3_bank_accounts_display');
delete_option('wsb_hub3_display_details_thankyou');
delete_site_option('wsb_hub3_display_details_thankyou');
delete_option('wsb_hub3_description_text');
delete_site_option('wsb_hub3_description_text');
delete_option('wsb_hub3_slip_width');
delete_site_option('wsb_hub3_slip_width');
delete_option('wsb_hub3_barcode_width');
delete_site_option('wsb_hub3_barcode_width');
delete_option('wsb_hub3_barcode_text');
delete_site_option('wsb_hub3_barcode_text');
delete_option('wsb_hub3_display_details_order');
delete_site_option('wsb_hub3_display_details_order');
delete_option('wsb_hub3_display_details_email');
delete_site_option('wsb_hub3_display_details_email');
delete_option('wsb_hub3_slip_width_email');
delete_site_option('wsb_hub3_slip_width_email');
delete_option('wsb_hub3_barcode_width_email');
delete_site_option('wsb_hub3_barcode_width_email');
delete_option('wsb_hub3_send_admin_slip');
delete_site_option('wsb_hub3_send_admin_slip');
delete_option('wsb_hub3_send_admin_barcode');
delete_site_option('wsb_hub3_send_admin_barcode');
delete_option('wsb_hub3_receiver_reference_date');
delete_site_option('wsb_hub3_receiver_reference_date');
delete_option('wsb_hub3_receiver_reference');
delete_site_option('wsb_hub3_receiver_reference');
delete_option('wsb_hub3_receiver_reference_prefix');
delete_site_option('wsb_hub3_receiver_reference_prefix');
delete_option('wsb_hub3_receiver_reference_sufix');
delete_site_option('wsb_hub3_receiver_reference_sufix');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wsb_hub3_slip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wsb_hub3_slip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wsb_hub3_slip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wsb_hub3_slip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wsb_hub3_barcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wsb_hub3_barcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wsb_hub3_barcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wsb_hub3_barcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wsb_barcode_iban' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wsb_barcode_iban' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wsb_barcode_iban' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wsb_barcode_iban' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'R1 račun' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'R1 račun' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'R1 račun' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'R1 račun' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'Ime tvrtke' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'Ime tvrtke' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'Ime tvrtke' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'Ime tvrtke' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'Adresa tvrtke' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'Adresa tvrtke' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'Adresa tvrtke' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'Adresa tvrtke' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wsb_sender_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wsb_sender_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wsb_sender_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wsb_sender_name' ) );

