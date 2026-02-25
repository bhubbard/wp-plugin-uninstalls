<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('CP_POLLS_LOAD_SCRIPTS');
delete_site_option('CP_POLLS_LOAD_SCRIPTS');
delete_option('CP_POLLS_rep_enable');
delete_site_option('CP_POLLS_rep_enable');
delete_option('CP_POLLS_rep_days');
delete_site_option('CP_POLLS_rep_days');
delete_option('CP_POLLS_rep_hour');
delete_site_option('CP_POLLS_rep_hour');
delete_option('CP_POLLS_rep_emails');
delete_site_option('CP_POLLS_rep_emails');
delete_option('CP_POLLS_fp_from_email');
delete_site_option('CP_POLLS_fp_from_email');
delete_option('CP_POLLS_rep_subject');
delete_site_option('CP_POLLS_rep_subject');
delete_option('CP_POLLS_rep_emailformat');
delete_site_option('CP_POLLS_rep_emailformat');
delete_option('CP_POLLS_rep_message');
delete_site_option('CP_POLLS_rep_message');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'installed_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('CP_POLLS_CSS');
delete_site_option('CP_POLLS_CSS');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'CP_POLLS_last_sent_id_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('CP_POLLS_last_verified');
delete_site_option('CP_POLLS_last_verified');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'CP_POLLS_last_sent%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('autoptimize_js_exclude');
delete_site_option('autoptimize_js_exclude');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_CSS' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_codepeople_promote_banner_%', '_site_transient_codepeople_promote_banner_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

