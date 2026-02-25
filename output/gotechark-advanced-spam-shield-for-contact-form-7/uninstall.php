<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf7ass_blocked_email_domains');
delete_site_option('cf7ass_blocked_email_domains');
delete_option('cf7ass_blocked_email_addresses');
delete_site_option('cf7ass_blocked_email_addresses');
delete_option('cf7ass_blocked_email_message');
delete_site_option('cf7ass_blocked_email_message');
delete_option('cf7ass_blocked_domain_message');
delete_site_option('cf7ass_blocked_domain_message');
delete_option('cf7ass_min_submission_time');
delete_site_option('cf7ass_min_submission_time');
delete_option('cf7ass_fast_submission_message');
delete_site_option('cf7ass_fast_submission_message');
delete_option('cf7ass_submission_limit');
delete_site_option('cf7ass_submission_limit');
delete_option('cf7ass_submission_time_window');
delete_site_option('cf7ass_submission_time_window');
delete_option('cf7ass_max_submission_message');
delete_site_option('cf7ass_max_submission_message');
delete_option('cf7ass_too_many_submissions_message');
delete_site_option('cf7ass_too_many_submissions_message');
delete_option('cf7ass_duplicate_submission_message');
delete_site_option('cf7ass_duplicate_submission_message');

// Delete Transients
delete_transient('cf7ass_dep_notice');
delete_site_transient('cf7ass_dep_notice');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cf7ass_submission_count%', '_site_transient_cf7ass_submission_count%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

