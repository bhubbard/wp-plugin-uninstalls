<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sis_carousel_settings');
delete_site_option('sis_carousel_settings');
delete_option('asinp_aws_public_key');
delete_site_option('asinp_aws_public_key');
delete_option('asinp_aws_private_key');
delete_site_option('asinp_aws_private_key');
delete_option('asinp_rnd_amazon_data');
delete_site_option('asinp_rnd_amazon_data');
delete_option('asinp_aws_associate_tag');
delete_site_option('asinp_aws_associate_tag');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'amazon_affiliate_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'amazon_affiliate_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'amazon_affiliate_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'amazon_affiliate_url' ) );

