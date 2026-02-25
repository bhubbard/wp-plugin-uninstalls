<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ICD_Hosting_Admin_Notices');
delete_site_option('ICD_Hosting_Admin_Notices');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'icd_hosting_admin_notice_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('icd_hosting_version');
delete_site_option('icd_hosting_version');
delete_option('icd_hosting_excluded_pages_ids');
delete_site_option('icd_hosting_excluded_pages_ids');
delete_option('icd_hosting_domaincheck_page_id');
delete_site_option('icd_hosting_domaincheck_page_id');
delete_option('icd_hosting_hostingorder_page_id');
delete_site_option('icd_hosting_hostingorder_page_id');
delete_option('icd_hosting_certificates_page_id');
delete_site_option('icd_hosting_certificates_page_id');
delete_option('icd_hosting_thankyou_page_id');
delete_site_option('icd_hosting_thankyou_page_id');
delete_option('icd_hosting_terms_page_id');
delete_site_option('icd_hosting_terms_page_id');
delete_option('icd_hosting_payment_page_id');
delete_site_option('icd_hosting_payment_page_id');
delete_option('icd_hosting_postback_page_id');
delete_site_option('icd_hosting_postback_page_id');
delete_option('icd_hosting_request_page_id');
delete_site_option('icd_hosting_request_page_id');
delete_option('icd_hosting_renew_page_id');
delete_site_option('icd_hosting_renew_page_id');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_page_id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_notice' ) );

