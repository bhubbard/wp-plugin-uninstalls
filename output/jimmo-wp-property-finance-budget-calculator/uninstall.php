<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_display_credits' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('jimmo_wp_property_finance_budget_calculator_display_credits');
delete_site_option('jimmo_wp_property_finance_budget_calculator_display_credits');

// Delete Transients
delete_transient('jimmo_wp_property_finance_budget_calculator_activation_notice');
delete_site_transient('jimmo_wp_property_finance_budget_calculator_activation_notice');

