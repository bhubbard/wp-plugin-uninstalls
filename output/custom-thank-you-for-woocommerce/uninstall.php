<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ctyw_page_id');
delete_site_option('ctyw_page_id');
delete_option('ctyw_info');
delete_site_option('ctyw_info');
delete_option('ctyw_notice_dismiss');
delete_site_option('ctyw_notice_dismiss');
delete_option('ctyw_enable_fb_social_box');
delete_site_option('ctyw_enable_fb_social_box');
delete_option('ctyw_enable_twitter_social_box');
delete_site_option('ctyw_enable_twitter_social_box');
delete_option('ctyw_enable_pinterest_social_box');
delete_site_option('ctyw_enable_pinterest_social_box');
delete_option('wc_custom_page_info');
delete_site_option('wc_custom_page_info');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wc_custom_thanks_redirect' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wc_custom_thanks_redirect' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wc_custom_thanks_redirect' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wc_custom_thanks_redirect' ) );

