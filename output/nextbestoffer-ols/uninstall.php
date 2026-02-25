<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('NextBestOffer_OLS_use_case');
delete_site_option('NextBestOffer_OLS_use_case');
delete_option('NextBestOffer_OLS_api_key');
delete_site_option('NextBestOffer_OLS_api_key');
delete_option('NextBestOffer_OLS_max_rule_length');
delete_site_option('NextBestOffer_OLS_max_rule_length');
delete_option('NextBestOffer_OLS_min_support');
delete_site_option('NextBestOffer_OLS_min_support');
delete_option('NextBestOffer_OLS_min_confidence');
delete_site_option('NextBestOffer_OLS_min_confidence');
delete_option('NextBestOffer_OLS_training_mode');
delete_site_option('NextBestOffer_OLS_training_mode');
delete_option('NextBestOffer_OLS_batch_size');
delete_site_option('NextBestOffer_OLS_batch_size');
delete_option('NextBestOffer_OLS_email_recommendations');
delete_site_option('NextBestOffer_OLS_email_recommendations');
delete_option('NextBestOffer_OLS_recom_mode');
delete_site_option('NextBestOffer_OLS_recom_mode');
delete_option('NextBestOffer_OLS_selected_partial');
delete_site_option('NextBestOffer_OLS_selected_partial');
delete_option('NextBestOffer_OLS_logs');
delete_site_option('NextBestOffer_OLS_logs');

// Delete Transients
delete_transient('NextBestOffer_OLS_training_status');
delete_site_transient('NextBestOffer_OLS_training_status');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_NextBestOffer_OLS_temporary_recommendations%', '_site_transient_NextBestOffer_OLS_temporary_recommendations%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

