<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ai_botkit_chatbot_sitewide_enabled');
delete_site_option('ai_botkit_chatbot_sitewide_enabled');
delete_option('ai_botkit_post_sync_settings');
delete_site_option('ai_botkit_post_sync_settings');
delete_option('ai_botkit_saas_connect_token');
delete_site_option('ai_botkit_saas_connect_token');
delete_option('ai_botkit_banned_keywords');
delete_site_option('ai_botkit_banned_keywords');
delete_option('ai_botkit_blocked_ips');
delete_site_option('ai_botkit_blocked_ips');
delete_option('ai_botkit_chatbot_enabled_pages');
delete_site_option('ai_botkit_chatbot_enabled_pages');
delete_option('ai_botkit_setup_completed');
delete_site_option('ai_botkit_setup_completed');
delete_option('ai_botkit_version');
delete_site_option('ai_botkit_version');

// Delete Transients
delete_transient('ai_botkit_onboarding_nonce');
delete_site_transient('ai_botkit_onboarding_nonce');
delete_transient('_ai_botkit_activation_redirect');
delete_site_transient('_ai_botkit_activation_redirect');

