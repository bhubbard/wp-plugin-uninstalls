<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adsrevshare_member_ad_percentage');
delete_site_option('adsrevshare_member_ad_percentage');
delete_option('adsrevshare_admin_publisher_id');
delete_site_option('adsrevshare_admin_publisher_id');
delete_option('adsrevshare_admin_custom_channel_id');
delete_site_option('adsrevshare_admin_custom_channel_id');
delete_option('adsrevshare_admin_ad_slot');
delete_site_option('adsrevshare_admin_ad_slot');
delete_option('adsrevshare_manual_ads_txt');
delete_site_option('adsrevshare_manual_ads_txt');
delete_option('adsrevshare_website_url');
delete_site_option('adsrevshare_website_url');
delete_option('adsrevshare_ad_footer_enabled');
delete_site_option('adsrevshare_ad_footer_enabled');
delete_option('adsrevshare_ad_footer_type');
delete_site_option('adsrevshare_ad_footer_type');
delete_option('adsrevshare_ad_footer_custom_code');
delete_site_option('adsrevshare_ad_footer_custom_code');
delete_option('adsrevshare_admin_website_url');
delete_site_option('adsrevshare_admin_website_url');
delete_option('adsrevshare_ad_top_enabled');
delete_site_option('adsrevshare_ad_top_enabled');
delete_option('adsrevshare_ad_bottom_enabled');
delete_site_option('adsrevshare_ad_bottom_enabled');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'adsrevshare_publisher_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'adsrevshare_publisher_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'adsrevshare_publisher_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'adsrevshare_publisher_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'adsrevshare_custom_channel_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'adsrevshare_custom_channel_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'adsrevshare_custom_channel_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'adsrevshare_custom_channel_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'adsrevshare_ad_slot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'adsrevshare_ad_slot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'adsrevshare_ad_slot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'adsrevshare_ad_slot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'adsrevshare_website_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'adsrevshare_website_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'adsrevshare_website_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'adsrevshare_website_url' ) );

