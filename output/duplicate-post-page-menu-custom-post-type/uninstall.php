<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dppmc_post');
delete_site_option('dppmc_post');
delete_option('dppmc_page');
delete_site_option('dppmc_page');
delete_option('dppmc_menu');
delete_site_option('dppmc_menu');
delete_option('dppmc_installationNewDate');
delete_site_option('dppmc_installationNewDate');
delete_option('ppmc_support_us_now_x');
delete_site_option('ppmc_support_us_now_x');
delete_option('ppmc_next_period_ratings');
delete_site_option('ppmc_next_period_ratings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'dppmc_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ppmc_remove_discount_notice_xmas_%', '_site_transient_ppmc_remove_discount_notice_xmas_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

