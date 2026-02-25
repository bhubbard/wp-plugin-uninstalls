<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ability_a11y_settings');
delete_site_option('ability_a11y_settings');
delete_option('ability_a11y_statement_page_id');
delete_site_option('ability_a11y_statement_page_id');
delete_option('ability_settings');
delete_site_option('ability_settings');
delete_option('ability_wizard_done');
delete_site_option('ability_wizard_done');
delete_option('ability_wizard_settings');
delete_site_option('ability_wizard_settings');

// Delete Transients
delete_transient('ability_activation_redirect');
delete_site_transient('ability_activation_redirect');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ability_daily_scans_%', '_site_transient_ability_daily_scans_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

