<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apisunat_logtail_token');
delete_site_option('apisunat_logtail_token');
delete_option('apisunat_fecha');
delete_site_option('apisunat_fecha');
delete_option('apisunat_forma_envio');
delete_site_option('apisunat_forma_envio');
delete_option('apisunat_no_doc');
delete_site_option('apisunat_no_doc');
delete_option('apisunat_key_tipo_comprobante');
delete_site_option('apisunat_key_tipo_comprobante');
delete_option('apisunat_serie_nc_factura');
delete_site_option('apisunat_serie_nc_factura');
delete_option('apisunat_serie_nc_boleta');
delete_site_option('apisunat_serie_nc_boleta');
delete_option('apisunat_personal_id');
delete_site_option('apisunat_personal_id');
delete_option('apisunat_personal_token');
delete_site_option('apisunat_personal_token');
delete_option('apisunat_serie_factura');
delete_site_option('apisunat_serie_factura');
delete_option('apisunat_serie_boleta');
delete_site_option('apisunat_serie_boleta');
delete_option('apisunat_tipo_tributo');
delete_site_option('apisunat_tipo_tributo');
delete_option('apisunat_factor_tributo');
delete_site_option('apisunat_factor_tributo');
delete_option('apisunat_include_time');
delete_site_option('apisunat_include_time');
delete_option('apisunat_shipping_cost');
delete_site_option('apisunat_shipping_cost');
delete_option('apisunat_debug_mode');
delete_site_option('apisunat_debug_mode');
delete_option('apisunat_custom_checkout');
delete_site_option('apisunat_custom_checkout');
delete_option('apisunat_key_value_factura');
delete_site_option('apisunat_key_value_factura');
delete_option('apisunat_key_value_boleta');
delete_site_option('apisunat_key_value_boleta');
delete_option('apisunat_key_tipo_documento');
delete_site_option('apisunat_key_tipo_documento');
delete_option('apisunat_key_value_dni');
delete_site_option('apisunat_key_value_dni');
delete_option('apisunat_key_value_ruc');
delete_site_option('apisunat_key_value_ruc');
delete_option('apisunat_key_value_pasaporte');
delete_site_option('apisunat_key_value_pasaporte');
delete_option('apisunat_key_value_otros_extranjero');
delete_site_option('apisunat_key_value_otros_extranjero');
delete_option('apisunat_key_numero_documento');
delete_site_option('apisunat_key_numero_documento');
delete_option('apisunat_ruc');
delete_site_option('apisunat_ruc');
delete_option('apisunat_company_name');
delete_site_option('apisunat_company_name');
delete_option('apisunat_company_address');
delete_site_option('apisunat_company_address');

// Clear Cron Jobs
wp_clear_scheduled_hook('apisunat_one_minute_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billing_apisunat_meta_data_mapping' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billing_apisunat_meta_data_mapping' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billing_apisunat_meta_data_mapping' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billing_apisunat_meta_data_mapping' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'apisunat_document_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'apisunat_document_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'apisunat_document_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'apisunat_document_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'apisunat_document_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'apisunat_document_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'apisunat_document_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'apisunat_document_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'apisunat_document_filename' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'apisunat_document_filename' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'apisunat_document_filename' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'apisunat_document_filename' ) );

