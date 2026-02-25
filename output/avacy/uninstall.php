<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('avacy_show_banner');
delete_site_option('avacy_show_banner');
delete_option('avacy_enable_preemptive_block');
delete_site_option('avacy_enable_preemptive_block');
delete_option('avacy_tenant');
delete_site_option('avacy_tenant');
delete_option('avacy_webspace_key');
delete_site_option('avacy_webspace_key');
delete_option('avacy_webspace_id');
delete_site_option('avacy_webspace_id');
delete_option('avacy_api_token');
delete_site_option('avacy_api_token');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_form_user_identifier' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('avacy_WooCommerce_Checkout_Form_form_user_identifier');
delete_site_option('avacy_WooCommerce_Checkout_Form_form_user_identifier');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_radio_enabled' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('avacy_active_tab');
delete_site_transient('avacy_active_tab');
delete_transient('settings_errors');
delete_site_transient('settings_errors');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );

