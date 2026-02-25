<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lz_api_public_key');
delete_site_option('lz_api_public_key');
delete_option('lz_api_private_key');
delete_site_option('lz_api_private_key');
delete_option('lz_api_amazon_tld');
delete_site_option('lz_api_amazon_tld');
delete_option('amazon_partner_id');
delete_site_option('amazon_partner_id');
delete_option('lz_debug');
delete_site_option('lz_debug');
delete_option('lz_gatracking');
delete_site_option('lz_gatracking');
delete_option('amazon_domain');
delete_site_option('amazon_domain');
delete_option('lazyzoun');
delete_site_option('lazyzoun');
delete_option('lz_logo_widget_title');
delete_site_option('lz_logo_widget_title');
delete_option('lz_subimgtext');
delete_site_option('lz_subimgtext');
delete_option('lz_presubimgtext');
delete_site_option('lz_presubimgtext');
delete_option('lz_aftersubimgtext');
delete_site_option('lz_aftersubimgtext');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lazyzoun-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lazyzoun-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lazyzoun-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lazyzoun-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lazyzoun-name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lazyzoun-name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lazyzoun-name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lazyzoun-name' ) );

