<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_enable' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_button_caption' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpjobster_paystack_enablesandbox');
delete_site_option('wpjobster_paystack_enablesandbox');
delete_option('wpjobster_paystack_tsk');
delete_site_option('wpjobster_paystack_tsk');
delete_option('wpjobster_paystack_tpk');
delete_site_option('wpjobster_paystack_tpk');
delete_option('wpjobster_paystack_lsk');
delete_site_option('wpjobster_paystack_lsk');
delete_option('wpjobster_paystack_lpk');
delete_site_option('wpjobster_paystack_lpk');
delete_option('wpjobster_paystack_success_page');
delete_site_option('wpjobster_paystack_success_page');
delete_option('wpjobster_paystack_failure_page');
delete_site_option('wpjobster_paystack_failure_page');
delete_option('wpjobster_paystack_id');
delete_site_option('wpjobster_paystack_id');

