<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_last_send' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_skipped' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_allow_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('adl_lp_general');
delete_site_option('adl_lp_general');
delete_option('adl_lp_social');
delete_site_option('adl_lp_social');
delete_option('adl_lp_misc');
delete_site_option('adl_lp_misc');
delete_option('adl_lp_accept_term');
delete_site_option('adl_lp_accept_term');
delete_option('wplp_legal_page_discount');
delete_site_option('wplp_legal_page_discount');
delete_option('adl_lp_excludePage');
delete_site_option('adl_lp_excludePage');
delete_option('adl_demo_inserted');
delete_site_option('adl_demo_inserted');
delete_option('adl_ccpa_demo_inserted');
delete_site_option('adl_ccpa_demo_inserted');
delete_option('adl_lp_popup');
delete_site_option('adl_lp_popup');
delete_option('adl_lp_cookie');
delete_site_option('adl_lp_cookie');

// Clear Cron Jobs

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'is_adl_legal_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'is_adl_legal_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'is_adl_legal_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'is_adl_legal_page' ) );

