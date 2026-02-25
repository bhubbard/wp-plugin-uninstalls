<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('huxloe_shipping_enable_log');
delete_site_option('huxloe_shipping_enable_log');
delete_option('huxloe_shipping_tenant_id');
delete_site_option('huxloe_shipping_tenant_id');
delete_option('huxloe_shipping_api_key');
delete_site_option('huxloe_shipping_api_key');
delete_option('huxloe_shipping_user_id');
delete_site_option('huxloe_shipping_user_id');
delete_option('huxloe_shipping_ioss_number');
delete_site_option('huxloe_shipping_ioss_number');
delete_option('huxloe_shipping_eori_number');
delete_site_option('huxloe_shipping_eori_number');
delete_option('huxloe_shipping_vat_number');
delete_site_option('huxloe_shipping_vat_number');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'huxloe_consigmentNumber' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'huxloe_consigmentNumber' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'huxloe_consigmentNumber' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'huxloe_consigmentNumber' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_hs_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_hs_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_hs_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_hs_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_huxloe_country_manufacturer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_huxloe_country_manufacturer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_huxloe_country_manufacturer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_huxloe_country_manufacturer' ) );

