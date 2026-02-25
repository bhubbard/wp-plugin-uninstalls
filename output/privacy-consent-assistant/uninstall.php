<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trm_gdpr_overwrite_notice_form_consent');
delete_site_option('trm_gdpr_overwrite_notice_form_consent');
delete_option('trm_gdpr_default_notice_form_consent');
delete_site_option('trm_gdpr_default_notice_form_consent');
delete_option('trm_gdpr_overwrite_notice_consent_bar');
delete_site_option('trm_gdpr_overwrite_notice_consent_bar');
delete_option('trm_gdpr_default_notice_consent_bar');
delete_site_option('trm_gdpr_default_notice_consent_bar');
delete_option('trm_gdpr_close_consent_functions');
delete_site_option('trm_gdpr_close_consent_functions');
delete_option('trm_gdpr_dynamic_style');
delete_site_option('trm_gdpr_dynamic_style');
delete_option('__trm_gdpr_version');
delete_site_option('__trm_gdpr_version');
delete_option('trm_gdpr_disable_hide_existing_links');
delete_site_option('trm_gdpr_disable_hide_existing_links');
delete_option('trm_gdpr_disable_form_consent');
delete_site_option('trm_gdpr_disable_form_consent');
delete_option('trm_gdpr_disable_consent_bar');
delete_site_option('trm_gdpr_disable_consent_bar');
delete_option('trm_gdpr_disable_subfooter');
delete_site_option('trm_gdpr_disable_subfooter');
delete_option('trm_gdpr_governing_state');
delete_site_option('trm_gdpr_governing_state');
delete_option('trm_gdpr_governing_country');
delete_site_option('trm_gdpr_governing_country');
delete_option('trm_gdpr_company_name');
delete_site_option('trm_gdpr_company_name');
delete_option('trm_gdpr_company_address');
delete_site_option('trm_gdpr_company_address');
delete_option('trm_gdpr_company_phone');
delete_site_option('trm_gdpr_company_phone');
delete_option('trm_gdpr_company_email');
delete_site_option('trm_gdpr_company_email');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient___cached_svn_%', '_site_transient___cached_svn_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

