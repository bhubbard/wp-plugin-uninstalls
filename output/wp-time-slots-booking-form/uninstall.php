<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cptslotsb_addons_active_list');
delete_site_option('cptslotsb_addons_active_list');
delete_option('CPAHB_PASSCODE');
delete_site_option('CPAHB_PASSCODE');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'installed_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cp_cpappb_statuses_block');
delete_site_option('cp_cpappb_statuses_block');
delete_option('CP_WPTSLOTSBK_CSS');
delete_site_option('CP_WPTSLOTSBK_CSS');
delete_option('cp_cptslotsb_rep_enable');
delete_site_option('cp_cptslotsb_rep_enable');
delete_option('cp_cptslotsb_rep_days');
delete_site_option('cp_cptslotsb_rep_days');
delete_option('cp_cptslotsb_rep_hour');
delete_site_option('cp_cptslotsb_rep_hour');
delete_option('cp_cptslotsb_rep_emails');
delete_site_option('cp_cptslotsb_rep_emails');
delete_option('cp_cptslotsb_fp_from_email');
delete_site_option('cp_cptslotsb_fp_from_email');
delete_option('cp_cptslotsb_rep_subject');
delete_site_option('cp_cptslotsb_rep_subject');
delete_option('cp_cptslotsb_rep_emailformat');
delete_site_option('cp_cptslotsb_rep_emailformat');
delete_option('cp_cptslotsb_rep_message');
delete_site_option('cp_cptslotsb_rep_message');
delete_option('cp_tslotsb_LOAD_SCRIPTS');
delete_site_option('cp_tslotsb_LOAD_SCRIPTS');
delete_option('CP_WPTS_CSV_SEPARATOR');
delete_site_option('CP_WPTS_CSV_SEPARATOR');
delete_option('cp_wpts_schcsvexclude');
delete_site_option('cp_wpts_schcsvexclude');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cp_cptslotsb_last_sent_id_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cp_cptslotsb_last_verified');
delete_site_option('cp_cptslotsb_last_verified');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cp_cptslotsb_last_sent%' ) );
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

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_codepeople_promote_banner_%', '_site_transient_codepeople_promote_banner_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cpeople-captcha-%', '_site_transient_cpeople-captcha-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('codepeople_wpts_warning_css');
delete_site_transient('codepeople_wpts_warning_css');

