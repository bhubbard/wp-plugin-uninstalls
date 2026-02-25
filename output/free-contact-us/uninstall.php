<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('free_contact_us_monetz_free_offer');
delete_site_option('free_contact_us_monetz_free_offer');
delete_option('free_contact_us_opt_intelligence_pid_no');
delete_site_option('free_contact_us_opt_intelligence_pid_no');
delete_option('free_contact_us_contact_email');
delete_site_option('free_contact_us_contact_email');
delete_option('free_contact_us_auto_email');
delete_site_option('free_contact_us_auto_email');
delete_option('free_contact_us_auto_subject');
delete_site_option('free_contact_us_auto_subject');
delete_option('free_contact_us_smtp_secure');
delete_site_option('free_contact_us_smtp_secure');
delete_option('free_contact_us_smtp_port');
delete_site_option('free_contact_us_smtp_port');
delete_option('free_contact_us_click_link_url');
delete_site_option('free_contact_us_click_link_url');
delete_option('free_contact_us_auto_reply_on');
delete_site_option('free_contact_us_auto_reply_on');
delete_option('free_contact_us_auto_from_email');
delete_site_option('free_contact_us_auto_from_email');
delete_option('free_contact_us_auto_from_name');
delete_site_option('free_contact_us_auto_from_name');
delete_option('free_contact_us_aw_list_id');
delete_site_option('free_contact_us_aw_list_id');
delete_option('free_contact_us_aweber_on');
delete_site_option('free_contact_us_aweber_on');
delete_option('free_contact_us_auth_code');
delete_site_option('free_contact_us_auth_code');
delete_option('free_contact_us_access_secret');
delete_site_option('free_contact_us_access_secret');
delete_option('free_contact_us_access_key');
delete_site_option('free_contact_us_access_key');
delete_option('free_contact_us_customer_secret');
delete_site_option('free_contact_us_customer_secret');
delete_option('free_contact_us_customer_key');
delete_site_option('free_contact_us_customer_key');
delete_option('free_contact_us_aw_subscr_title');
delete_site_option('free_contact_us_aw_subscr_title');
delete_option('free_contact_us_unsbr_email');
delete_site_option('free_contact_us_unsbr_email');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'Layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'Layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'Layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'Layout' ) );

