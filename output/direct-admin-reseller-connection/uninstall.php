<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('darc_nh_dashboard');
delete_site_option('darc_nh_dashboard');
delete_option('darc_nh_adresse');
delete_site_option('darc_nh_adresse');
delete_option('darc_nh_port');
delete_site_option('darc_nh_port');
delete_option('darc_nh_account');
delete_site_option('darc_nh_account');
delete_option('darc_nh_key');
delete_site_option('darc_nh_key');
delete_option('darc_nh_currency');
delete_site_option('darc_nh_currency');
delete_option('darc_nh_priceperiode');
delete_site_option('darc_nh_priceperiode');
delete_option('darc_nh_version');
delete_site_option('darc_nh_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'darc_nh_daid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'darc_nh_daid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'darc_nh_daid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'darc_nh_daid' ) );

