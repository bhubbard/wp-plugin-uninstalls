<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hd_wc_ie_plus_product_code');
delete_site_option('hd_wc_ie_plus_product_code');
delete_option('hd_wc_ie_plus_exemption_name');
delete_site_option('hd_wc_ie_plus_exemption_name');
delete_option('hd_wc_ie_plus_exemption_reason');
delete_site_option('hd_wc_ie_plus_exemption_reason');
delete_option('hd_wc_ie_plus_sequences_cache');
delete_site_option('hd_wc_ie_plus_sequences_cache');
delete_option('hd_wc_ie_plus_filename_prefix');
delete_site_option('hd_wc_ie_plus_filename_prefix');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'hd_wc_ie_plus_send_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('hd_wc_ie_plus_transport_guide_email_address');
delete_site_option('hd_wc_ie_plus_transport_guide_email_address');
delete_option('hd_wc_ie_plus_email_method');
delete_site_option('hd_wc_ie_plus_email_method');
delete_option('hd_wc_ie_plus_pending_email');
delete_site_option('hd_wc_ie_plus_pending_email');
delete_option('hd_wc_ie_plus_automatic_email_errors');
delete_site_option('hd_wc_ie_plus_automatic_email_errors');
delete_option('hd_wc_ie_plus_send_invoice_subject');
delete_site_option('hd_wc_ie_plus_send_invoice_subject');
delete_option('hd_wc_ie_plus_send_invoice_heading');
delete_site_option('hd_wc_ie_plus_send_invoice_heading');
delete_option('hd_wc_ie_plus_send_invoice_body');
delete_site_option('hd_wc_ie_plus_send_invoice_body');
delete_option('hd_wc_ie_plus_document_entity');
delete_site_option('hd_wc_ie_plus_document_entity');
delete_option('hd_wc_ie_plus_pending_finalize');
delete_site_option('hd_wc_ie_plus_pending_finalize');
delete_option('hd_wc_ie_plus_guide_get_at_code');
delete_site_option('hd_wc_ie_plus_guide_get_at_code');
delete_option('hd_wc_ie_plus_guide_get_at_code_delay_email');
delete_site_option('hd_wc_ie_plus_guide_get_at_code_delay_email');
delete_option('hd_wc_ie_plus_default_tax');
delete_site_option('hd_wc_ie_plus_default_tax');
delete_option('hd_wc_ie_plus_notices');
delete_site_option('hd_wc_ie_plus_notices');
delete_option('hd_wc_ie_plus_api_token');
delete_site_option('hd_wc_ie_plus_api_token');
delete_option('hd_wc_ie_plus_subdomain');
delete_site_option('hd_wc_ie_plus_subdomain');
delete_option('hd_wc_ie_plus_vat_field_mandatory');
delete_site_option('hd_wc_ie_plus_vat_field_mandatory');
delete_option('hd_wc_ie_plus_leave_as_draft');
delete_site_option('hd_wc_ie_plus_leave_as_draft');
delete_option('hd_wc_ie_plus_tax_country');
delete_site_option('hd_wc_ie_plus_tax_country');
delete_option('hd_wc_ie_plus_vat_field');
delete_site_option('hd_wc_ie_plus_vat_field');
delete_option('hd_wc_ie_plus_create_bulk_invoice');
delete_site_option('hd_wc_ie_plus_create_bulk_invoice');
delete_option('hd_wc_ie_plus_db_version');
delete_site_option('hd_wc_ie_plus_db_version');
delete_option('hd_wc_ie_plus_vat_field_prefix');
delete_site_option('hd_wc_ie_plus_vat_field_prefix');

// Clear Cron Jobs
wp_clear_scheduled_hook('invoicexpress_woocommerce_fetch_at_code');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hd_wc_ie_plus_invoice_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hd_wc_ie_plus_invoice_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hd_wc_ie_plus_invoice_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hd_wc_ie_plus_invoice_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_id' ) );

