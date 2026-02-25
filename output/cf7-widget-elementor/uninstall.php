<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-at' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-never' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('dismissed-void-cf7-promotion-notice-ele-query-at');
delete_site_option('dismissed-void-cf7-promotion-notice-ele-query-at');
delete_option('dismissed-void-cf7-promotion-notice-ele-query-never');
delete_site_option('dismissed-void-cf7-promotion-notice-ele-query-never');
delete_option('void_cf7_elementor_activation_time');
delete_site_option('void_cf7_elementor_activation_time');
delete_option('void_cf7_spare_me');
delete_site_option('void_cf7_spare_me');
delete_option('void_cf7_with_elementor_ran_never');
delete_site_option('void_cf7_with_elementor_ran_never');
delete_option('void_cf7_with_elementor_ran_time');
delete_site_option('void_cf7_with_elementor_ran_time');
delete_option('void_cf7_with_elementor_ran');
delete_site_option('void_cf7_with_elementor_ran');
delete_option('void_cf7_elep_2021_temporary');
delete_site_option('void_cf7_elep_2021_temporary');
delete_option('void_cf7_elep_2021_temporary_time');
delete_site_option('void_cf7_elep_2021_temporary_time');
delete_option('void_cf7_elep_2021_never');
delete_site_option('void_cf7_elep_2021_never');
delete_option('void_cf7_email_with_elementor_never');
delete_site_option('void_cf7_email_with_elementor_never');
delete_option('void_cf7_email_with_elementor');
delete_site_option('void_cf7_email_with_elementor');
delete_option('void_cf7_email_with_elementor_time');
delete_site_option('void_cf7_email_with_elementor_time');

