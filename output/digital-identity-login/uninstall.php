<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mo_digital_id_dock_configuration_details');
delete_site_option('mo_digital_id_dock_configuration_details');
delete_option('mo_digital_id_ms_authenticator_callback_api_key');
delete_site_option('mo_digital_id_ms_authenticator_callback_api_key');
delete_option('mo_digital_id_ms_authenticator_callback_api_key_iv');
delete_site_option('mo_digital_id_ms_authenticator_callback_api_key_iv');
delete_option('mo_digital_id_ms_authenticator_configuration_details');
delete_site_option('mo_digital_id_ms_authenticator_configuration_details');
delete_option('mo_digital_id_ms_authenticator_is_app_configured');
delete_site_option('mo_digital_id_ms_authenticator_is_app_configured');
delete_option('mo_digital_id_supported_wallets');
delete_site_option('mo_digital_id_supported_wallets');
delete_option('mo_digital_id_admin_email');
delete_site_option('mo_digital_id_admin_email');
delete_option('mo_digital_id_encryption_key');
delete_site_option('mo_digital_id_encryption_key');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_mo_digital_id_proof_request_%', '_site_transient_mo_digital_id_proof_request_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_mo_digital_id_proof_request_status_%', '_site_transient_mo_digital_id_proof_request_status_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('mo_digital_identity_message');
delete_site_transient('mo_digital_identity_message');
delete_transient('mo_digital_identity_support_message');
delete_site_transient('mo_digital_identity_support_message');

