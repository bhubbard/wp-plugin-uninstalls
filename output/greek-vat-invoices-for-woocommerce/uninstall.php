<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('GRVATIN_uppercase_fields');
delete_site_option('GRVATIN_uppercase_fields');
delete_option('GRVATIN_version');
delete_site_option('GRVATIN_version');
delete_option('GRVATIN_enable_aade_validation');
delete_site_option('GRVATIN_enable_aade_validation');
delete_option('GRVATIN_enable_vies_validation');
delete_site_option('GRVATIN_enable_vies_validation');
delete_option('GRVATIN_auto_send_invoice');
delete_site_option('GRVATIN_auto_send_invoice');
delete_option('GRVATIN_vat_exempt_eu');
delete_site_option('GRVATIN_vat_exempt_eu');
delete_option('GRVATIN_vat_exempt_non_eu');
delete_site_option('GRVATIN_vat_exempt_non_eu');
delete_option('grvatin_invoice_type_position');
delete_site_option('grvatin_invoice_type_position');
delete_option('GRVATIN_article_39a');
delete_site_option('GRVATIN_article_39a');
delete_option('GRVATIN_article_39a_categories');
delete_site_option('GRVATIN_article_39a_categories');
delete_option('GRVATIN_auto_send_email');
delete_site_option('GRVATIN_auto_send_email');
delete_option('GRVATIN_company_address');
delete_site_option('GRVATIN_company_address');
delete_option('GRVATIN_company_name');
delete_site_option('GRVATIN_company_name');
delete_option('GRVATIN_company_vat');
delete_site_option('GRVATIN_company_vat');
delete_option('GRVATIN_company_doy');
delete_site_option('GRVATIN_company_doy');
delete_option('GRVATIN_company_phone');
delete_site_option('GRVATIN_company_phone');
delete_option('GRVATIN_company_email');
delete_site_option('GRVATIN_company_email');
delete_option('GRVATIN_company_website');
delete_site_option('GRVATIN_company_website');
delete_option('GRVATIN_company_logo');
delete_site_option('GRVATIN_company_logo');
delete_option('grvatin_invoice_prefix');
delete_site_option('grvatin_invoice_prefix');
delete_option('GRVATIN_greek_vat_validation_method');
delete_site_option('GRVATIN_greek_vat_validation_method');
delete_option('GRVATIN_vies_validation');
delete_site_option('GRVATIN_vies_validation');
delete_option('GRVATIN_aade_username');
delete_site_option('GRVATIN_aade_username');
delete_option('GRVATIN_aade_password');
delete_site_option('GRVATIN_aade_password');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billing_invoice_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billing_invoice_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billing_invoice_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billing_invoice_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billing_vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billing_vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billing_vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billing_vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billing_doy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billing_doy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billing_doy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billing_doy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billing_business_activity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billing_business_activity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billing_business_activity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billing_business_activity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_vies_validated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_vies_validated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_vies_validated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_vies_validated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_vat_exempt_39a' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_vat_exempt_39a' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_vat_exempt_39a' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_vat_exempt_39a' ) );

