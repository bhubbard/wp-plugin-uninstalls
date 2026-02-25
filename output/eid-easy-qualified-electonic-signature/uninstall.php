<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eideasy_test_mode');
delete_site_option('eideasy_test_mode');
delete_option('eideasy_client_id');
delete_site_option('eideasy_client_id');
delete_option('eideasy_secret');
delete_site_option('eideasy_secret');
delete_option('eideasy_provider_signatures_enabled');
delete_site_option('eideasy_provider_signatures_enabled');
delete_option('eideasy_signature_redirect');
delete_site_option('eideasy_signature_redirect');
delete_option('eideasy_notify_email_subject');
delete_site_option('eideasy_notify_email_subject');
delete_option('eideasy_notify_email_content');
delete_site_option('eideasy_notify_email_content');
delete_option('eideasy_notify_email_sender');
delete_site_option('eideasy_notify_email_sender');
delete_option('eideasy_pending_provider_signatures');
delete_site_option('eideasy_pending_provider_signatures');
delete_option('eideasy_provider_signatures_notify');
delete_site_option('eideasy_provider_signatures_notify');
delete_option('eideasy_pending_provider_lock');
delete_site_option('eideasy_pending_provider_lock');
delete_option('eideasy_no_emails');
delete_site_option('eideasy_no_emails');
delete_option('eideasy_no_download');
delete_site_option('eideasy_no_download');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'eideasy_signing_state_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('eideasy_notify_email_address');
delete_site_option('eideasy_notify_email_address');
delete_option('eideasy_include_doc_with_notify_email');
delete_site_option('eideasy_include_doc_with_notify_email');
delete_option('eideasy_skip_signing_flag');
delete_site_option('eideasy_skip_signing_flag');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'eideasy_signing_url_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('eideasy_cf7_user_email_field');
delete_site_option('eideasy_cf7_user_email_field');
delete_option('eideasy_cf7_signed_forms');
delete_site_option('eideasy_cf7_signed_forms');

