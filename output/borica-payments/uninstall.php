<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_borica_woo_payment_gateway_settings');
delete_site_option('woocommerce_borica_woo_payment_gateway_settings');
delete_option('borica_direct');
delete_site_option('borica_direct');
delete_option('borica_testmode');
delete_site_option('borica_testmode');
delete_option('borica_status');
delete_site_option('borica_status');
delete_option('borica_debug');
delete_site_option('borica_debug');
delete_option('borica_mname');
delete_site_option('borica_mname');
delete_option('borica_unsuccess_message');
delete_site_option('borica_unsuccess_message');
delete_option('borica_success_message');
delete_site_option('borica_success_message');
delete_option('borica_email');
delete_site_option('borica_email');
delete_option('borica_text_color');
delete_site_option('borica_text_color');
delete_option('borica_mid_bgn');
delete_site_option('borica_mid_bgn');
delete_option('borica_tid_bgn');
delete_site_option('borica_tid_bgn');
delete_option('borica_test_key_bgn');
delete_site_option('borica_test_key_bgn');
delete_option('borica_test_password_bgn');
delete_site_option('borica_test_password_bgn');
delete_option('borica_production_key_bgn');
delete_site_option('borica_production_key_bgn');
delete_option('borica_production_password_bgn');
delete_site_option('borica_production_password_bgn');
delete_option('borica_mid_eur');
delete_site_option('borica_mid_eur');
delete_option('borica_tid_eur');
delete_site_option('borica_tid_eur');
delete_option('borica_test_key_eur');
delete_site_option('borica_test_key_eur');
delete_option('borica_test_password_eur');
delete_site_option('borica_test_password_eur');
delete_option('borica_production_key_eur');
delete_site_option('borica_production_key_eur');
delete_option('borica_production_password_eur');
delete_site_option('borica_production_password_eur');
delete_option('borica_payment_response');
delete_site_option('borica_payment_response');
delete_option('borica_payment_response_template');
delete_site_option('borica_payment_response_template');
delete_option('borica_recurring');
delete_site_option('borica_recurring');
delete_option('borica_recurring_cancel_button');
delete_site_option('borica_recurring_cancel_button');
delete_option('borica_payment_lang');
delete_site_option('borica_payment_lang');
delete_option('borica_db_version');
delete_site_option('borica_db_version');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_borica_receipt_page_%', '_site_transient_borica_receipt_page_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_borica_recurring_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_borica_recurring_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_borica_recurring_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_borica_recurring_ids' ) );

