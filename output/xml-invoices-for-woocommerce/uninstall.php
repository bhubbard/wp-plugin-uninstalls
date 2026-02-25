<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('check_if_xml_invoices_active');
delete_site_option('check_if_xml_invoices_active');
delete_option('xml_invoices_validator_key');
delete_site_option('xml_invoices_validator_key');
delete_option('xml_invoices_ubl_emails');
delete_site_option('xml_invoices_ubl_emails');
delete_option('xml_invoices_supplier_street');
delete_site_option('xml_invoices_supplier_street');
delete_option('xml_invoices_supplier_city');
delete_site_option('xml_invoices_supplier_city');
delete_option('xml_invoices_supplier_postal');
delete_site_option('xml_invoices_supplier_postal');
delete_option('xml_invoices_supplier_country');
delete_site_option('xml_invoices_supplier_country');
delete_option('xml_invoices_supplier_vat');
delete_site_option('xml_invoices_supplier_vat');
delete_option('xml_invoices_currency_code');
delete_site_option('xml_invoices_currency_code');
delete_option('xml_invoices_tax_scheme_id');
delete_site_option('xml_invoices_tax_scheme_id');
delete_option('xml_invoices_on_order_emails');
delete_site_option('xml_invoices_on_order_emails');
delete_option('xml_invoices_repo_version');
delete_site_option('xml_invoices_repo_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

