<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_saphali_fields_blocks');
delete_site_option('woocommerce_saphali_fields_blocks');
delete_option('woocommerce_saphali_filds');
delete_site_option('woocommerce_saphali_filds');
delete_option('woocommerce_saphali_filds_filters');
delete_site_option('woocommerce_saphali_filds_filters');
delete_option('woocommerce_saphali_filds_locate');
delete_site_option('woocommerce_saphali_filds_locate');
delete_option('column_count_saphali');
delete_site_option('column_count_saphali');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_%' ) );

