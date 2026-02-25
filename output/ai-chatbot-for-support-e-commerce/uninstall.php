<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acsec_chatbot_chatbot_title');
delete_site_option('acsec_chatbot_chatbot_title');
delete_option('acsec_chatbot_current_status');
delete_site_option('acsec_chatbot_current_status');
delete_option('acsec_chatbot_chat_position');
delete_site_option('acsec_chatbot_chat_position');
delete_option('acsec_chatbot_api_key');
delete_site_option('acsec_chatbot_api_key');
delete_option('acsec_chatbot_challenge_token_temp');
delete_site_option('acsec_chatbot_challenge_token_temp');
delete_option('acsec_chatbot_site_id');
delete_site_option('acsec_chatbot_site_id');
delete_option('acsec_chatbot_keys_sent');
delete_site_option('acsec_chatbot_keys_sent');
delete_option('acsec_chatbot_data_push_types');
delete_site_option('acsec_chatbot_data_push_types');
delete_option('acsec_chatbot_policy_pages');
delete_site_option('acsec_chatbot_policy_pages');
delete_option('acsec_chatbot_active_provider');
delete_site_option('acsec_chatbot_active_provider');
delete_option('acsec_chatbot_openai_model');
delete_site_option('acsec_chatbot_openai_model');
delete_option('acsec_chatbot_gemini_model');
delete_site_option('acsec_chatbot_gemini_model');
delete_option('acsec_chatbot_node_url');
delete_site_option('acsec_chatbot_node_url');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'acsec_chatbot_domain_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'acsec_chatbot_domain_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'acsec_chatbot_domain_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'acsec_chatbot_domain_notice_dismissed' ) );

