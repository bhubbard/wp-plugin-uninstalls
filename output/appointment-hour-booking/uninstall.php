<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cpappb_addons_active_list');
delete_site_option('cpappb_addons_active_list');
delete_option('cpappb_dashboard_maxitems');
delete_site_option('cpappb_dashboard_maxitems');
delete_option('cpappb_dashboard_columns');
delete_site_option('cpappb_dashboard_columns');
delete_option('cpappb_dashboard_columnlabels');
delete_site_option('cpappb_dashboard_columnlabels');
delete_option('cpappb_dashboard_compactview');
delete_site_option('cpappb_dashboard_compactview');
delete_option('CPAHB_PASSCODE');
delete_site_option('CPAHB_PASSCODE');
delete_option('cp_cpappb_statuses_block');
delete_site_option('cp_cpappb_statuses_block');
delete_option('CP_APPB_LOAD_SCRIPTS');
delete_site_option('CP_APPB_LOAD_SCRIPTS');
delete_option('cp_cpappb_schcalcontent_otherparams');
delete_site_option('cp_cpappb_schcalcontent_otherparams');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'installed_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cp_cpappb_admin_language');
delete_site_option('cp_cpappb_admin_language');
delete_option('cp_cpappb_schcalcontent_admin');
delete_site_option('cp_cpappb_schcalcontent_admin');
delete_option('cp_cpappb_schcaltitle_admin');
delete_site_option('cp_cpappb_schcaltitle_admin');
delete_option('cp_cpappb_schcalcontent_public');
delete_site_option('cp_cpappb_schcalcontent_public');
delete_option('cp_cpappb_schcaltitle_public');
delete_site_option('cp_cpappb_schcaltitle_public');
delete_option('cp_cpappb_sch_admin_blockedt');
delete_site_option('cp_cpappb_sch_admin_blockedt');
delete_option('cp_cpappb_schcalcontent_exclude');
delete_site_option('cp_cpappb_schcalcontent_exclude');
delete_option('CP_AHB_CSS');
delete_site_option('CP_AHB_CSS');
delete_option('CP_AHB_JS');
delete_site_option('CP_AHB_JS');
delete_option('cp_cpappb_honeypot');
delete_site_option('cp_cpappb_honeypot');
delete_option('cp_cpappb_storeip');
delete_site_option('cp_cpappb_storeip');
delete_option('cp_cpappb_rep_enable');
delete_site_option('cp_cpappb_rep_enable');
delete_option('cp_cpappb_rep_days');
delete_site_option('cp_cpappb_rep_days');
delete_option('cp_cpappb_rep_hour');
delete_site_option('cp_cpappb_rep_hour');
delete_option('cp_cpappb_rep_emails');
delete_site_option('cp_cpappb_rep_emails');
delete_option('cp_cpappb_fp_from_email');
delete_site_option('cp_cpappb_fp_from_email');
delete_option('cp_cpappb_rep_subject');
delete_site_option('cp_cpappb_rep_subject');
delete_option('cp_cpappb_rep_emailformat');
delete_site_option('cp_cpappb_rep_emailformat');
delete_option('cp_cpappb_rep_message');
delete_site_option('cp_cpappb_rep_message');
delete_option('cp_cpappb_bocsvexclude');
delete_site_option('cp_cpappb_bocsvexclude');
delete_option('cp_cpappb_schcsvexclude');
delete_site_option('cp_cpappb_schcsvexclude');
delete_option('CP_APPB_CSV_CHARFIX');
delete_site_option('CP_APPB_CSV_CHARFIX');
delete_option('CP_APPB_CSV_SEPARATOR');
delete_site_option('CP_APPB_CSV_SEPARATOR');
delete_option('AHB_ONE_TIME_3UPDATE');
delete_site_option('AHB_ONE_TIME_3UPDATE');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cp_cpappb_last_sent_id_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cp_cpappb_last_verified');
delete_site_option('cp_cpappb_last_verified');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cp_cpappb_last_sent%' ) );
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
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_JS' ) );
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
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ahb-captcha-%', '_site_transient_ahb-captcha-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

