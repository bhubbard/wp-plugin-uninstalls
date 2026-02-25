<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('einvmylhdn_api_key');
delete_site_option('einvmylhdn_api_key');
delete_option('einvmylhdn_api_secret');
delete_site_option('einvmylhdn_api_secret');
delete_option('einvmylhdn_myinvois_tin');
delete_site_option('einvmylhdn_myinvois_tin');
delete_option('einvmylhdn_company_name');
delete_site_option('einvmylhdn_company_name');
delete_option('einvmylhdn_company_email');
delete_site_option('einvmylhdn_company_email');
delete_option('einvmylhdn_company_phone');
delete_site_option('einvmylhdn_company_phone');
delete_option('einvmylhdn_identification_number');
delete_site_option('einvmylhdn_identification_number');
delete_option('einvmylhdn_identification_scheme');
delete_site_option('einvmylhdn_identification_scheme');
delete_option('einvmylhdn_tin');
delete_site_option('einvmylhdn_tin');
delete_option('einvmylhdn_sst_registration');
delete_site_option('einvmylhdn_sst_registration');
delete_option('einvmylhdn_tourism_tax_registration');
delete_site_option('einvmylhdn_tourism_tax_registration');
delete_option('einvmylhdn_industry_classification_code');
delete_site_option('einvmylhdn_industry_classification_code');
delete_option('einvmylhdn_industry_classification_name');
delete_site_option('einvmylhdn_industry_classification_name');
delete_option('einvmylhdn_street_address');
delete_site_option('einvmylhdn_street_address');
delete_option('einvmylhdn_city_name');
delete_site_option('einvmylhdn_city_name');
delete_option('einvmylhdn_state_code');
delete_site_option('einvmylhdn_state_code');
delete_option('einvmylhdn_postal_zone');
delete_site_option('einvmylhdn_postal_zone');
delete_option('einvmylhdn_country_code');
delete_site_option('einvmylhdn_country_code');
delete_option('einvmylhdn_enable_logging');
delete_site_option('einvmylhdn_enable_logging');
delete_option('einvmylhdn_default_classification_code');
delete_site_option('einvmylhdn_default_classification_code');

// Clear Cron Jobs
wp_clear_scheduled_hook('einvmylhdn_process_pending_invoices');
wp_clear_scheduled_hook('einvmylhdn_expire_old_invoices');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'einvoice_id_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'einvoice_id_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'einvoice_id_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'einvoice_id_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'einvoice_id_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'einvoice_id_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'einvoice_id_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'einvoice_id_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'einvoice_tin_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'einvoice_tin_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'einvoice_tin_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'einvoice_tin_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'einvoice_sst_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'einvoice_sst_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'einvoice_sst_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'einvoice_sst_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_einvmylhdn_use_global_classification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_einvmylhdn_use_global_classification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_einvmylhdn_use_global_classification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_einvmylhdn_use_global_classification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_einvmylhdn_classification_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_einvmylhdn_classification_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_einvmylhdn_classification_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_einvmylhdn_classification_code' ) );

