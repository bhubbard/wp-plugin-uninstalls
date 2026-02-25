<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('suspend_automatic_detection_of_residential_addresses');
delete_site_option('suspend_automatic_detection_of_residential_addresses');
delete_option('en_woo_addons_auto_residential_detecion_flag');
delete_site_option('en_woo_addons_auto_residential_detecion_flag');
delete_option('en_trial_residential_flag');
delete_site_option('en_trial_residential_flag');
delete_option('auto_residential_delivery_plan_auto_renew');
delete_site_option('auto_residential_delivery_plan_auto_renew');
delete_option('en_woo_addons_liftgate_with_auto_residential');
delete_site_option('en_woo_addons_liftgate_with_auto_residential');
delete_option('en_default_unconfirmed_address_types_to');
delete_site_option('en_default_unconfirmed_address_types_to');
delete_option('en_default_missing_street_address_types_to');
delete_site_option('en_default_missing_street_address_types_to');
delete_option('residential_delivery_options_disclosure_types_to');
delete_site_option('residential_delivery_options_disclosure_types_to');
delete_option('eniture_not_show_rates_for_pobox_addresses');
delete_site_option('eniture_not_show_rates_for_pobox_addresses');
delete_option('en_woo_addons_liftgate_delivery_as_option');
delete_site_option('en_woo_addons_liftgate_delivery_as_option');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'en_woo_addons_auto_residential_detecion_flag_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'en_rad_addresses' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'en_rad_addresses' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'en_rad_addresses' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'en_rad_addresses' ) );

