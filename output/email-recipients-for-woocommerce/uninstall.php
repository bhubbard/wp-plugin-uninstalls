<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('alg_wc_email_recipients_section_enabled');
delete_site_option('alg_wc_email_recipients_section_enabled');
delete_option('alg_wc_email_recipients');
delete_site_option('alg_wc_email_recipients');
delete_option('alg_wc_email_recipients_forwarding_section_enabled');
delete_site_option('alg_wc_email_recipients_forwarding_section_enabled');
delete_option('alg_wc_email_recipients_cc_email');
delete_site_option('alg_wc_email_recipients_cc_email');
delete_option('alg_wc_email_recipients_bcc_email');
delete_site_option('alg_wc_email_recipients_bcc_email');
delete_option('alg_wc_email_recipients_version');
delete_site_option('alg_wc_email_recipients_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

