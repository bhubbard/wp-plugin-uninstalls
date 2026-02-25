<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('web3devs_abnft_configured_coins_setting');
delete_site_option('web3devs_abnft_configured_coins_setting');
delete_option('web3devs_abnft_denial_page_setting');
delete_site_option('web3devs_abnft_denial_page_setting');
delete_option('web3devs_abnft_api_key_setting');
delete_site_option('web3devs_abnft_api_key_setting');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_web3devs_abnft_meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_web3devs_abnft_meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_web3devs_abnft_meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_web3devs_abnft_meta_key' ) );

