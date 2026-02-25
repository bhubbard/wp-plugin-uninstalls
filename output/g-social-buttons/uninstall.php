<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gsb_post_type');
delete_site_option('gsb_post_type');
delete_option('fist_icon_text');
delete_site_option('fist_icon_text');
delete_option('fist_icon_link');
delete_site_option('fist_icon_link');
delete_option('mail_text');
delete_site_option('mail_text');
delete_option('mail_link');
delete_site_option('mail_link');
delete_option('phone_text');
delete_site_option('phone_text');
delete_option('phone_link');
delete_site_option('phone_link');
delete_option('whatsapp_text');
delete_site_option('whatsapp_text');
delete_option('whatsapp_link');
delete_site_option('whatsapp_link');
delete_option('messenger_text');
delete_site_option('messenger_text');
delete_option('messenger_link');
delete_site_option('messenger_link');
delete_option('facebook_text');
delete_site_option('facebook_text');
delete_option('facebook_link');
delete_site_option('facebook_link');
delete_option('youtube_text');
delete_site_option('youtube_text');
delete_option('youtube_link');
delete_site_option('youtube_link');
delete_option('linkedin_text');
delete_site_option('linkedin_text');
delete_option('linkedin_link');
delete_site_option('linkedin_link');
delete_option('instagram_text');
delete_site_option('instagram_text');
delete_option('instagram_link');
delete_site_option('instagram_link');
delete_option('twitter_text');
delete_site_option('twitter_text');
delete_option('twitter_link');
delete_site_option('twitter_link');
delete_option('skype_text');
delete_site_option('skype_text');
delete_option('skype_link');
delete_site_option('skype_link');
delete_option('pinterest_text');
delete_site_option('pinterest_text');
delete_option('pinterest_link');
delete_site_option('pinterest_link');
delete_option('google_plus_text');
delete_site_option('google_plus_text');
delete_option('google_plus_link');
delete_site_option('google_plus_link');
delete_option('mobile_display');
delete_site_option('mobile_display');
delete_option('call_now_link');
delete_site_option('call_now_link');
delete_option('call_now_image');
delete_site_option('call_now_image');
delete_option('call_now_title');
delete_site_option('call_now_title');
delete_option('call_now_slogan');
delete_site_option('call_now_slogan');
delete_option('call_now_social_data');
delete_site_option('call_now_social_data');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_gsb' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_gsb' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_gsb' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_gsb' ) );

