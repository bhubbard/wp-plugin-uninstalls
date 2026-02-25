<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('whtprole_pricing_save_general_settings');
delete_site_option('whtprole_pricing_save_general_settings');
delete_option('whtprole_global_product_settings');
delete_site_option('whtprole_global_product_settings');
delete_option('whtprole_pricing_global_rules');
delete_site_option('whtprole_pricing_global_rules');
delete_option('whtprole_global_product_setting');
delete_site_option('whtprole_global_product_setting');
delete_option('whtprole_role_pricing_db_version');
delete_site_option('whtprole_role_pricing_db_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_role_pricing_rules' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_role_pricing_rules' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_role_pricing_rules' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_role_pricing_rules' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_show_pricing_table' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_show_pricing_table' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_show_pricing_table' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_show_pricing_table' ) );

