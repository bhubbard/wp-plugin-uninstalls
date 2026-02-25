<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('newsroomie_lead_tag');
delete_site_option('newsroomie_lead_tag');
delete_option('newsroomie_new_lead_tag');
delete_site_option('newsroomie_new_lead_tag');
delete_option('newsroomie_new_google_user_tag');
delete_site_option('newsroomie_new_google_user_tag');
delete_option('newsroomie_new_linkedin_user_tag');
delete_site_option('newsroomie_new_linkedin_user_tag');
delete_option('newsroomie_api_token');
delete_site_option('newsroomie_api_token');
delete_option('newsroomie_leads_cta_title');
delete_site_option('newsroomie_leads_cta_title');
delete_option('newsroomie_leads_cta_body');
delete_site_option('newsroomie_leads_cta_body');
delete_option('newsroomie_leads_cta_email_placeholder');
delete_site_option('newsroomie_leads_cta_email_placeholder');
delete_option('newsroomie_leads_cta_unlock_btn');
delete_site_option('newsroomie_leads_cta_unlock_btn');
delete_option('newsroomie_leads_cta_google_btn');
delete_site_option('newsroomie_leads_cta_google_btn');
delete_option('newsroomie_leads_cta_linkedin_btn');
delete_site_option('newsroomie_leads_cta_linkedin_btn');
delete_option('newsroomie_modal_leads_cta_success_title');
delete_site_option('newsroomie_modal_leads_cta_success_title');
delete_option('newsroomie_modal_leads_cta_success_body');
delete_site_option('newsroomie_modal_leads_cta_success_body');
delete_option('newsroomie_modal_leads_cta_failed_title');
delete_site_option('newsroomie_modal_leads_cta_failed_title');
delete_option('newsroomie_modal_leads_cta_failed_body');
delete_site_option('newsroomie_modal_leads_cta_failed_body');
delete_option('newsroomie_lead_email_subject');
delete_site_option('newsroomie_lead_email_subject');
delete_option('newsroomie_lead_email_from_name');
delete_site_option('newsroomie_lead_email_from_name');
delete_option('newsroomie_lead_email_from_email');
delete_site_option('newsroomie_lead_email_from_email');
delete_option('newsroomie_lead_email_message');
delete_site_option('newsroomie_lead_email_message');
delete_option('newsroomie_tenant');
delete_site_option('newsroomie_tenant');
delete_option('newsroomie_sync_to');
delete_site_option('newsroomie_sync_to');
delete_option('newsroomie_sdk_config');
delete_site_option('newsroomie_sdk_config');
delete_option('newsroomie_push_enabled');
delete_site_option('newsroomie_push_enabled');
delete_option('newsroomie_push_immediate');
delete_site_option('newsroomie_push_immediate');
delete_option('newsroomie_subscriber_cta_title');
delete_site_option('newsroomie_subscriber_cta_title');
delete_option('newsroomie_subscriber_cta_body');
delete_site_option('newsroomie_subscriber_cta_body');
delete_option('newsroomie_subscriber_cta_subscribe_btn');
delete_site_option('newsroomie_subscriber_cta_subscribe_btn');
delete_option('newsroomie_subscriber_cta_login_btn');
delete_site_option('newsroomie_subscriber_cta_login_btn');
delete_option('newsroomie_subscriber_cta_subscribe_link');
delete_site_option('newsroomie_subscriber_cta_subscribe_link');
delete_option('newsroomie_subscriber_cta_login_link');
delete_site_option('newsroomie_subscriber_cta_login_link');
delete_option('newsroomie_modal_text');
delete_site_option('newsroomie_modal_text');
delete_option('newsroomie_modal_email_placeholder');
delete_site_option('newsroomie_modal_email_placeholder');
delete_option('newsroomie_modal_register_button');
delete_site_option('newsroomie_modal_register_button');
delete_option('newsroomie_modal_google_button');
delete_site_option('newsroomie_modal_google_button');
delete_option('newsroomie_modal_linkedin_button');
delete_site_option('newsroomie_modal_linkedin_button');
delete_option('newsroomie_modal_success_title');
delete_site_option('newsroomie_modal_success_title');
delete_option('newsroomie_modal_success_body');
delete_site_option('newsroomie_modal_success_body');
delete_option('newsroomie_hash_key');
delete_site_option('newsroomie_hash_key');

// Delete Transients
delete_transient('newsroomie_tagging_options_cleared');
delete_site_transient('newsroomie_tagging_options_cleared');
delete_transient('newsroomie_is_api_token_valid');
delete_site_transient('newsroomie_is_api_token_valid');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'account_locked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'account_locked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'account_locked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'account_locked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'user_banned' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'user_banned' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'user_banned' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'user_banned' ) );

