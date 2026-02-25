<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('CP_CFTE_LOAD_SCRIPTS');
delete_site_option('CP_CFTE_LOAD_SCRIPTS');
delete_option('cp_cfte_rep_enable');
delete_site_option('cp_cfte_rep_enable');
delete_option('cp_cfte_rep_days');
delete_site_option('cp_cfte_rep_days');
delete_option('cp_cfte_rep_hour');
delete_site_option('cp_cfte_rep_hour');
delete_option('cp_cfte_rep_emails');
delete_site_option('cp_cfte_rep_emails');
delete_option('cp_cfte_fp_from_email');
delete_site_option('cp_cfte_fp_from_email');
delete_option('cp_cfte_rep_subject');
delete_site_option('cp_cfte_rep_subject');
delete_option('cp_cfte_rep_emailformat');
delete_site_option('cp_cfte_rep_emailformat');
delete_option('cp_cfte_rep_message');
delete_site_option('cp_cfte_rep_message');
delete_option('installed_contact-form-to-email');
delete_site_option('installed_contact-form-to-email');
delete_option('CP_CFTE_CSS');
delete_site_option('CP_CFTE_CSS');
delete_option('CP_CFTE_JS');
delete_site_option('CP_CFTE_JS');
delete_option('CFTE_ONE_TIME_2UPDATE');
delete_site_option('CFTE_ONE_TIME_2UPDATE');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cp_cfte_last_sent_id_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cp_cfte_last_verified');
delete_site_option('cp_cfte_last_verified');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cp_cfte_last_sent%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_JS' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_CSS' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('autoptimize_js_exclude');
delete_site_option('autoptimize_js_exclude');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_codepeople_promote_banner_%', '_site_transient_codepeople_promote_banner_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_codepeople_cftedk_banner_%', '_site_transient_codepeople_cftedk_banner_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cpeople-captcha-%', '_site_transient_cpeople-captcha-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

