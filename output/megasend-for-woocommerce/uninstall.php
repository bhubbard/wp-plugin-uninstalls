<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('megasend_woo_tracking_enabled');
delete_site_option('megasend_woo_tracking_enabled');
delete_option('megasend_woo_abandonment_threshold');
delete_site_option('megasend_woo_abandonment_threshold');
delete_option('megasend_woo_onboarding_completed');
delete_site_option('megasend_woo_onboarding_completed');
delete_option('megasend_woo_instance_id');
delete_site_option('megasend_woo_instance_id');
delete_option('megasend_woo_api_token');
delete_site_option('megasend_woo_api_token');
delete_option('megasend_woo_gdpr_enabled');
delete_site_option('megasend_woo_gdpr_enabled');
delete_option('megasend_woo_gdpr_message');
delete_site_option('megasend_woo_gdpr_message');
delete_option('megasend_woo_delete_data_on_uninstall');
delete_site_option('megasend_woo_delete_data_on_uninstall');
delete_option('megasend_woo_default_language');
delete_site_option('megasend_woo_default_language');
delete_option('megasend_woo_db_version');
delete_site_option('megasend_woo_db_version');
delete_option('megasend_woo_default_country_code');
delete_site_option('megasend_woo_default_country_code');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');

// Delete Transients
delete_transient('megasend_woo_activation_redirect');
delete_site_transient('megasend_woo_activation_redirect');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_megasend_woo_templates_%', '_site_transient_megasend_woo_templates_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

