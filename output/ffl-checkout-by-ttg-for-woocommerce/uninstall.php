<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('FFLCheckoutByTTG_enable_sot_license_upload');
delete_site_option('FFLCheckoutByTTG_enable_sot_license_upload');
delete_option('FFLCheckoutByTTG_API_KEY');
delete_site_option('FFLCheckoutByTTG_API_KEY');
delete_option('FFLCheckoutByTTG_initial_map_latitude');
delete_site_option('FFLCheckoutByTTG_initial_map_latitude');
delete_option('FFLCheckoutByTTG_initial_map_longitude');
delete_site_option('FFLCheckoutByTTG_initial_map_longitude');
delete_option('FFLCheckoutByTTG_initial_map_zoom');
delete_site_option('FFLCheckoutByTTG_initial_map_zoom');
delete_option('ttg_ffl_checkout_block_location');
delete_site_option('ttg_ffl_checkout_block_location');
delete_option('FFLCheckoutByTTG_checkout_title_for_ffl_items');
delete_site_option('FFLCheckoutByTTG_checkout_title_for_ffl_items');
delete_option('FFLCheckoutByTTG_checkout_title_for_nfa_items');
delete_site_option('FFLCheckoutByTTG_checkout_title_for_nfa_items');
delete_option('FFLCheckoutByTTG_checkout_message_for_ffl_map');
delete_site_option('FFLCheckoutByTTG_checkout_message_for_ffl_map');
delete_option('FFLCheckoutByTTG_checkout_message_for_ffl_license');
delete_site_option('FFLCheckoutByTTG_checkout_message_for_ffl_license');
delete_option('FFLCheckoutByTTG_enable_interactive_map');
delete_site_option('FFLCheckoutByTTG_enable_interactive_map');
delete_option('FFLCheckoutByTTG_enable_unverified_ffls');
delete_site_option('FFLCheckoutByTTG_enable_unverified_ffls');
delete_option('FFLCheckoutByTTG_enable_file_upload');
delete_site_option('FFLCheckoutByTTG_enable_file_upload');
delete_option('FFLCheckoutByTTG_enable_skip_ffl_proccess');
delete_site_option('FFLCheckoutByTTG_enable_skip_ffl_proccess');
delete_option('woocommerce_ship_to_destination');
delete_site_option('woocommerce_ship_to_destination');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ttg_ffl_requires_checkout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ttg_ffl_requires_checkout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ttg_ffl_requires_checkout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ttg_ffl_requires_checkout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ttg_ffl_requires_sot_license' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ttg_ffl_requires_sot_license' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ttg_ffl_requires_sot_license' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ttg_ffl_requires_sot_license' ) );

