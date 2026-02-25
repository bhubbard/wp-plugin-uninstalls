<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('glideffxf_data_install');
delete_site_option('glideffxf_data_install');
delete_option('skuautoffxf_letters_and_numbers');
delete_site_option('skuautoffxf_letters_and_numbers');
delete_option('skuautoffxf_auto_number');
delete_site_option('skuautoffxf_auto_number');
delete_option('skuautoffxf_auto_prefix');
delete_site_option('skuautoffxf_auto_prefix');
delete_option('skuautoffxf_auto_ID');
delete_site_option('skuautoffxf_auto_ID');
delete_option('skuautoffxf_previous');
delete_site_option('skuautoffxf_previous');
delete_option('skuautoffxf_suffix');
delete_site_option('skuautoffxf_suffix');
delete_option('skuautoffxf_number_dop');
delete_site_option('skuautoffxf_number_dop');
delete_option('skuautoffxf_variation_separator');
delete_site_option('skuautoffxf_variation_separator');
delete_option('skuautoffxf_auto_variant');
delete_site_option('skuautoffxf_auto_variant');
delete_option('skuautoffxf_duplicate_sku');
delete_site_option('skuautoffxf_duplicate_sku');
delete_option('skuautoffxf_variation_settings');
delete_site_option('skuautoffxf_variation_settings');
delete_option('skuautoffxf_format_an');
delete_site_option('skuautoffxf_format_an');
delete_option('my_option_name');
delete_site_option('my_option_name');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sku' ) );

