<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_activecampaign_settings');
delete_site_option('woocommerce_activecampaign_settings');
delete_option('settings_activecampaign');
delete_site_option('settings_activecampaign');

// Delete Transients
delete_transient('es_wc_activecampaign_errors');
delete_site_transient('es_wc_activecampaign_errors');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_es_wc_activecampaign_list_%', '_site_transient_es_wc_activecampaign_list_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_es_wc_activecampaign_tags_list_%', '_site_transient_es_wc_activecampaign_tags_list_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'es_wc_activecampaign_opt_in' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'es_wc_activecampaign_opt_in' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'es_wc_activecampaign_opt_in' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'es_wc_activecampaign_opt_in' ) );

