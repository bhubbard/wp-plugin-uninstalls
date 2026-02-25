<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cmplz-tc-current-version');
delete_site_option('cmplz-tc-current-version');
delete_option('cmplz_tc_documents_update_date');
delete_site_option('cmplz_tc_documents_update_date');
delete_option('cmplz_documents_update_date');
delete_site_option('cmplz_documents_update_date');
delete_option('cmplz_generate_pdf_languages');
delete_site_option('cmplz_generate_pdf_languages');
delete_option('cmplz_pdf_dir_token');
delete_site_option('cmplz_pdf_dir_token');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_custom_page' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'complianz_tc_options_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_custom_page_url' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cmplz_deleted_cookies');
delete_site_option('cmplz_deleted_cookies');
delete_option('cmplz_tc_review_notice_shown');
delete_site_option('cmplz_tc_review_notice_shown');
delete_option('cmplz_tc_activation_time');
delete_site_option('cmplz_tc_activation_time');
delete_option('cmplz_wizard_completed_once');
delete_site_option('cmplz_wizard_completed_once');
delete_option('trp_settings');
delete_site_option('trp_settings');
delete_option('complianz_tc_options_settings');
delete_site_option('complianz_tc_options_settings');

// Delete Transients
delete_transient('cmplz_tc_redirect_to_settings');
delete_site_transient('cmplz_tc_redirect_to_settings');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cmplz_tc_shortcode_%', '_site_transient_cmplz_tc_shortcode_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('cmplz_wizard_locked_by_user');
delete_site_transient('cmplz_wizard_locked_by_user');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cmplz_tc_document_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cmplz_tc_document_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cmplz_tc_document_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cmplz_tc_document_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cmplz_tc_shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cmplz_tc_shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cmplz_tc_shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cmplz_tc_shortcode' ) );

