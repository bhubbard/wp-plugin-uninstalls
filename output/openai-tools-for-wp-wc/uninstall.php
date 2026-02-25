<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enable_public_ai_tools_task');
delete_site_option('enable_public_ai_tools_task');
delete_option('enable_ai_tools_logs');
delete_site_option('enable_ai_tools_logs');
delete_option('openai_tools_comment_count');
delete_site_option('openai_tools_comment_count');
delete_option('openai_tools_review_count');
delete_site_option('openai_tools_review_count');
delete_option('custom_openai_domain');
delete_site_option('custom_openai_domain');
delete_option('deepseek_api_key');
delete_site_option('deepseek_api_key');
delete_option('siliconflow_api_key');
delete_site_option('siliconflow_api_key');
delete_option('groq_api_key');
delete_site_option('groq_api_key');
delete_option('openai_api_key');
delete_site_option('openai_api_key');
delete_option('woocommerce_webhook_deliver_async_disable');
delete_site_option('woocommerce_webhook_deliver_async_disable');
delete_option('enable_xml_feeds_generator');
delete_site_option('enable_xml_feeds_generator');
delete_option('openai_token');
delete_site_option('openai_token');
delete_option('siliconflow_custom_model');
delete_site_option('siliconflow_custom_model');
delete_option('openai_language');
delete_site_option('openai_language');
delete_option('review_feeds_default_brand');
delete_site_option('review_feeds_default_brand');
delete_option('ai_tools_default_model');
delete_site_option('ai_tools_default_model');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'verified' ) );

