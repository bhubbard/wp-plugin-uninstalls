<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('prayer_req_admin_email');
delete_site_option('prayer_req_admin_email');
delete_option('prayer_admin_email_cc');
delete_site_option('prayer_admin_email_cc');
delete_option('prayer_email_from');
delete_site_option('prayer_email_from');
delete_option('prayer_email_user');
delete_site_option('prayer_email_user');
delete_option('prayer_email_req_subject');
delete_site_option('prayer_email_req_subject');
delete_option('prayer_email_req_messages');
delete_site_option('prayer_email_req_messages');
delete_option('prayer_email_admin_subject');
delete_site_option('prayer_email_admin_subject');
delete_option('prayer_email_admin_messages');
delete_site_option('prayer_email_admin_messages');
delete_option('upr_no_prayer_per_page');
delete_site_option('upr_no_prayer_per_page');
delete_option('upr_login_not_required_request');
delete_site_option('upr_login_not_required_request');
delete_option('upr_prayer_req_email');
delete_site_option('upr_prayer_req_email');
delete_option('upr_prayer_send_email');
delete_site_option('upr_prayer_send_email');
delete_option('upr_prayer_send_admin_email');
delete_site_option('upr_prayer_send_admin_email');
delete_option('upr_prayer_default_status_pending');
delete_site_option('upr_prayer_default_status_pending');
delete_option('upr_hide_prayer_button');
delete_site_option('upr_hide_prayer_button');
delete_option('upr_hide_prayer_count');
delete_site_option('upr_hide_prayer_count');
delete_option('upr_display_username_on_prayer_listing');
delete_site_option('upr_display_username_on_prayer_listing');
delete_option('upr_prayer_hide_captcha');
delete_site_option('upr_prayer_hide_captcha');
delete_option('upr_prayer_show_country');
delete_site_option('upr_prayer_show_country');
delete_option('upr_allow_comments_prayer_request');
delete_site_option('upr_allow_comments_prayer_request');
delete_option('upr_pray_prayed_button_ip');
delete_site_option('upr_pray_prayed_button_ip');
delete_option('upr_show_prayer_category');
delete_site_option('upr_show_prayer_category');
delete_option('upr_prayer_share');
delete_site_option('upr_prayer_share');
delete_option('upr_time_interval_pray_prayed_button');
delete_site_option('upr_time_interval_pray_prayed_button');
delete_option('upr_prayer_fetch_req_from');
delete_site_option('upr_prayer_fetch_req_from');
delete_option('upr_prayer_secret');
delete_site_option('upr_prayer_secret');
delete_option('upr_prayer_sitekey');
delete_site_option('upr_prayer_sitekey');
delete_option('upr_prayer_thankyou');
delete_site_option('upr_prayer_thankyou');
delete_option('upr_prayer_list_title');
delete_site_option('upr_prayer_list_title');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'prayers_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'prayers_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'prayers_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'prayers_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'prayers_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'prayers_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'prayers_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'prayers_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'prayers_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'prayers_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'prayers_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'prayers_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'prayers_website' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'prayers_website' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'prayers_website' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'prayers_website' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'prayers_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'prayers_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'prayers_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'prayers_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'prayer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'prayer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'prayer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'prayer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'user_id' ) );

