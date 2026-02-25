<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_db_version');
delete_site_option('woocommerce_db_version');
delete_option('mos_product_specifications_tab_options');
delete_site_option('mos_product_specifications_tab_options');
delete_option('mos_product_specifications_tab_flush_rewrite');
delete_site_option('mos_product_specifications_tab_flush_rewrite');
delete_option('mos_product_specifications_tab_deactive_key');
delete_site_option('mos_product_specifications_tab_deactive_key');
delete_option('mos_product_specifications_tab_do_activation_redirect');
delete_site_option('mos_product_specifications_tab_do_activation_redirect');

// Delete Transients
delete_transient('mos_product_specifications_tab_activation_notice');
delete_site_transient('mos_product_specifications_tab_activation_notice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mos_specifications_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mos_specifications_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mos_specifications_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mos_specifications_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mos_product_specifications_tab_settings_theme' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mos_product_specifications_tab_settings_theme' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mos_product_specifications_tab_settings_theme' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mos_product_specifications_tab_settings_theme' ) );

