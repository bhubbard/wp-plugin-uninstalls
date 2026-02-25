<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bitcx_aipb_ai_api_key');
delete_site_option('bitcx_aipb_ai_api_key');
delete_option('bitcx_aipb_page_id');
delete_site_option('bitcx_aipb_page_id');
delete_option('bitcraftx_aipb_page_id');
delete_site_option('bitcraftx_aipb_page_id');

// Delete Transients
delete_transient('bitcx_aipb_page_created');
delete_site_transient('bitcx_aipb_page_created');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bitcx_portfolio_item_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bitcx_portfolio_item_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bitcx_portfolio_item_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bitcx_portfolio_item_link' ) );

