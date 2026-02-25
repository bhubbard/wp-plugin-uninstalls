<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('autoreply_email');
delete_site_option('autoreply_email');
delete_option('autoreply_ai_api_key');
delete_site_option('autoreply_ai_api_key');
delete_option('autoreply_ai_activated');
delete_site_option('autoreply_ai_activated');
delete_option('autoreply_ai_word_limit');
delete_site_option('autoreply_ai_word_limit');
delete_option('autoreply_ai_selected_model_gemini');
delete_site_option('autoreply_ai_selected_model_gemini');
delete_option('autoreply_ai_selected_engine');
delete_site_option('autoreply_ai_selected_engine');
delete_option('autoreply_ai_auto_reply');
delete_site_option('autoreply_ai_auto_reply');
delete_option('autoreply_ai_selected_user');
delete_site_option('autoreply_ai_selected_user');
delete_option('autoreply_ai_selected_model');
delete_site_option('autoreply_ai_selected_model');
delete_option('autoreply_ai_selected_forum');
delete_site_option('autoreply_ai_selected_forum');
delete_option('autoreply_ai_prompt_add');
delete_site_option('autoreply_ai_prompt_add');
delete_option('autoreply_ai_auto_reply_msg');
delete_site_option('autoreply_ai_auto_reply_msg');
delete_option('autoreply_ai_without_reply_enable');
delete_site_option('autoreply_ai_without_reply_enable');
delete_option('autoreply_ai_generated_ai_notic');
delete_site_option('autoreply_ai_generated_ai_notic');
delete_option('autoreply_ai_generated_ai_notic_enable');
delete_site_option('autoreply_ai_generated_ai_notic_enable');
delete_option('autoreply_ai_selected_comment_based');
delete_site_option('autoreply_ai_selected_comment_based');
delete_option('autoreply_llmstxt_settings');
delete_site_option('autoreply_llmstxt_settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_auto_reply' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_auto_reply' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_auto_reply' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_auto_reply' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fmwp_topic' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fmwp_topic' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fmwp_topic' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fmwp_topic' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fmwp_forum' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fmwp_forum' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fmwp_forum' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fmwp_forum' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bbp_reply_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bbp_reply_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bbp_reply_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bbp_reply_to' ) );

