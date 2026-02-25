<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fweo_emailoctopus_api_key');
delete_site_option('fweo_emailoctopus_api_key');
delete_option('fweo_emailoctopus_show_all_pages');
delete_site_option('fweo_emailoctopus_show_all_pages');
delete_option('fweo_emailoctopus_google_analytics');
delete_site_option('fweo_emailoctopus_google_analytics');
delete_option('fweo_emailoctopus_include_css');
delete_site_option('fweo_emailoctopus_include_css');
delete_option('fweo_emailoctopus_include_font_awesome');
delete_site_option('fweo_emailoctopus_include_font_awesome');
delete_option('fweo_emailoctopus_enable_wpa');
delete_site_option('fweo_emailoctopus_enable_wpa');
delete_option('fweo_emailoctopus_list_id');
delete_site_option('fweo_emailoctopus_list_id');
delete_option('fweo_emailoctopus_extra_fields');
delete_site_option('fweo_emailoctopus_extra_fields');
delete_option('woocommerce_fws-woo-emailoctopus_settings');
delete_site_option('woocommerce_fws-woo-emailoctopus_settings');
delete_option('fweo_mailing_lists');
delete_site_option('fweo_mailing_lists');
delete_option('fweo_emailoctopus_gdpr_text');
delete_site_option('fweo_emailoctopus_gdpr_text');
delete_option('fweo_emailoctopus_clicky');
delete_site_option('fweo_emailoctopus_clicky');
delete_option('fweo_emailoctopus_cookie_name');
delete_site_option('fweo_emailoctopus_cookie_name');
delete_option('fweo_emailoctopus_text_newsletter');
delete_site_option('fweo_emailoctopus_text_newsletter');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fweo_emailoctopus_subscribed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fweo_emailoctopus_subscribed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fweo_emailoctopus_subscribed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fweo_emailoctopus_subscribed' ) );

