<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_lkn_pix_for_woocommerce_settings');
delete_site_option('woocommerce_lkn_pix_for_woocommerce_settings');
delete_option('woocommerce_lkn_pix_for_woocommerce_c6_settings');
delete_site_option('woocommerce_lkn_pix_for_woocommerce_c6_settings');
delete_option('woocommerce_lkn_cielo_pix_for_woocommerce_settings');
delete_site_option('woocommerce_lkn_cielo_pix_for_woocommerce_settings');
delete_option('woocommerce_lkn_pix_for_woocommerce_paghiper_settings');
delete_site_option('woocommerce_lkn_pix_for_woocommerce_paghiper_settings');
delete_option('woocommerce_lkn_rede_pix_for_woocommerce_settings');
delete_site_option('woocommerce_lkn_rede_pix_for_woocommerce_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('lkn_schedule_check_cielo_pix_payment_hook');
wp_clear_scheduled_hook('lkn_remove_custom_check_cielo_pix_payment_job_hook');
wp_clear_scheduled_hook('lkn_schedule_check_rede_pix_payment_hook');
wp_clear_scheduled_hook('lkn_remove_custom_check_rede_pix_payment_job_hook');

