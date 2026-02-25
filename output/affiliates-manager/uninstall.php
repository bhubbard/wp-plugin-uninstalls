<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpam_db_version');
delete_site_option('wpam_db_version');
delete_option('wpam_options_version');
delete_site_option('wpam_options_version');
delete_option('wpam_payout_report_generated');
delete_site_option('wpam_payout_report_generated');
delete_option('wp_affiliates_manager_referrers');
delete_site_option('wp_affiliates_manager_referrers');
delete_option('wp_affiliates_manager_payouts');
delete_site_option('wp_affiliates_manager_payouts');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_new_email' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpam_logfile_suffix');
delete_site_option('wpam_logfile_suffix');

