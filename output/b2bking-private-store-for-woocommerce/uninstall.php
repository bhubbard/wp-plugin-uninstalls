<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('b2bking_plugin_status_setting');
delete_site_option('b2bking_plugin_status_setting');
delete_option('b2bking_current_tab_setting');
delete_site_option('b2bking_current_tab_setting');
delete_option('b2bking_guest_access_restriction_setting');
delete_site_option('b2bking_guest_access_restriction_setting');
delete_option('b2bking_hide_prices_guests_text_setting');
delete_site_option('b2bking_hide_prices_guests_text_setting');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'b2bking_dismiss_activate_woocommerce_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'b2bking_dismiss_activate_woocommerce_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'b2bking_dismiss_activate_woocommerce_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'b2bking_dismiss_activate_woocommerce_notice' ) );

