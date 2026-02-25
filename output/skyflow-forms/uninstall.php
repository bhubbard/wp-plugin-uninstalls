<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('skyflow_forms_unsub_page_id');
delete_site_option('skyflow_forms_unsub_page_id');
delete_option('skyflow_forms_label_placement');
delete_site_option('skyflow_forms_label_placement');
delete_option('skyflow_forms_help_placement');
delete_site_option('skyflow_forms_help_placement');
delete_option('skyflow_forms_error_placement');
delete_site_option('skyflow_forms_error_placement');
delete_option('skyflow_forms_success_placement');
delete_site_option('skyflow_forms_success_placement');
delete_option('skyflow_forms_validation_messages');
delete_site_option('skyflow_forms_validation_messages');
delete_option('skyflow_forms_recaptcha_enabled');
delete_site_option('skyflow_forms_recaptcha_enabled');
delete_option('skyflow_forms_recaptcha_site_key');
delete_site_option('skyflow_forms_recaptcha_site_key');
delete_option('skyflow_forms_recaptcha_secret_key');
delete_site_option('skyflow_forms_recaptcha_secret_key');
delete_option('skyflow_forms_recaptcha_version');
delete_site_option('skyflow_forms_recaptcha_version');
delete_option('skyflow_forms_hcaptcha_enabled');
delete_site_option('skyflow_forms_hcaptcha_enabled');
delete_option('skyflow_forms_hcaptcha_site_key');
delete_site_option('skyflow_forms_hcaptcha_site_key');
delete_option('skyflow_forms_hcaptcha_secret_key');
delete_site_option('skyflow_forms_hcaptcha_secret_key');
delete_option('skyflow_forms_hcaptcha_theme');
delete_site_option('skyflow_forms_hcaptcha_theme');
delete_option('skyflow_forms_email_settings');
delete_site_option('skyflow_forms_email_settings');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_skyflow_forms_errors_%', '_site_transient_skyflow_forms_errors_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_skyflow_forms_values_%', '_site_transient_skyflow_forms_values_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_skyflow_forms_email_meta_%', '_site_transient_skyflow_forms_email_meta_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

