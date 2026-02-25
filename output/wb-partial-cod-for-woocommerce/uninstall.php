<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woobooster_partial_cod_enabled');
delete_site_option('woobooster_partial_cod_enabled');
delete_option('woobooster_partial_cod_title_text');
delete_site_option('woobooster_partial_cod_title_text');
delete_option('woobooster_partial_cod_amount');
delete_site_option('woobooster_partial_cod_amount');
delete_option('woobooster_partial_cod_amount_type');
delete_site_option('woobooster_partial_cod_amount_type');
delete_option('woobooster_partial_cod_extra_fees_enabled');
delete_site_option('woobooster_partial_cod_extra_fees_enabled');
delete_option('woobooster_partial_cod_extra_fees');
delete_site_option('woobooster_partial_cod_extra_fees');
delete_option('woobooster_partial_cod_extra_fees_title');
delete_site_option('woobooster_partial_cod_extra_fees_title');
delete_option('woocommerce_tax_class');
delete_site_option('woocommerce_tax_class');
delete_option('woobooster_partial_cod_extra_fees_tax');
delete_site_option('woobooster_partial_cod_extra_fees_tax');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'restrict_partial_cod' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'restrict_partial_cod' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'restrict_partial_cod' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'restrict_partial_cod' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'only_partial_cod' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'only_partial_cod' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'only_partial_cod' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'only_partial_cod' ) );

