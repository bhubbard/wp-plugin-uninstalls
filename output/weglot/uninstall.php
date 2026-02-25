<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('weglot_version');
delete_site_option('weglot_version');
delete_option('weglot_old_permalink_structure');
delete_site_option('weglot_old_permalink_structure');
delete_option('woocommerce_myaccount_lost_password_endpoint');
delete_site_option('woocommerce_myaccount_lost_password_endpoint');
delete_option('weglot_instawp');
delete_site_option('weglot_instawp');

// Delete Transients
delete_transient('weglot_php_version_notice');
delete_site_transient('weglot_php_version_notice');
delete_transient('weglot_cache_cdn');
delete_site_transient('weglot_cache_cdn');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_weglot_idem_%', '_site_transient_weglot_idem_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_weglot_sig_%', '_site_transient_weglot_sig_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('weglot_slugs_cache');
delete_site_transient('weglot_slugs_cache');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_menu_item_menu_item_parent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_menu_item_menu_item_parent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_menu_item_menu_item_parent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_menu_item_menu_item_parent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'weglot_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'weglot_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'weglot_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'weglot_language' ) );

